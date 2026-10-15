#!/usr/bin/env bash
# cert_signin.sh — open the free-certificate platforms for a ONE-TIME manual sign-in.
#
# Why this exists (measured 2026-10-15):
#   Every free-cert platform wants its OWN account. Bob's existing Google/GitHub login on this
#   box does NOT carry over — driving his signed-in Chrome to skills.google, kaggle.com/settings
#   and learn.microsoft.com/.../achievements all bounced to that platform's own sign-in page.
#   The sign-in itself is one click each ("Sign in with Google"), and Google IS already signed in
#   in this profile, so it should be a single click per site — then the courses are automatable.
#
# Usage:
#   ./cert_signin.sh            # open all four, in order, and wait for the logins
#   ./cert_signin.sh kaggle     # just one
#   ./cert_signin.sh status     # report which are already signed in (no browser changes)
set -u

PORT=9333
PROFILE="/tmp/opencode/certs-profile"
CHROME="/opt/google/chrome/google-chrome"
PY="/home/roni/Roni_workspace/trending-tt/.venv/bin/python3"
CDP="/home/roni/Roni_workspace/bugbounty_agent/scripts/cdp.py"

# name -> landing page (the page you land on AFTER sign-in, which also serves as the probe)
declare -A TARGETS=(
  [kaggle]="https://www.kaggle.com/learn"
  [mslearn]="https://learn.microsoft.com/en-us/training/"
  [google]="https://www.skills.google/"
  [hackerrank]="https://www.hackerrank.com/skills-verification"
)
# name -> a route that ONLY resolves when signed in
declare -A PROBES=(
  [kaggle]="https://www.kaggle.com/settings"
  [mslearn]="https://learn.microsoft.com/en-us/users/me/achievements"
  [google]="https://www.skills.google/my_account/profile"
  [hackerrank]="https://www.hackerrank.com/settings/profile"
)

up() { curl -s -m 5 "http://127.0.0.1:$PORT/json/version" >/dev/null 2>&1; }

start_chrome() {
  if up; then return 0; fi
  echo "starting the cert browser on :$PORT (profile $PROFILE)"
  setsid "$CHROME" --user-data-dir="$PROFILE" --remote-debugging-port=$PORT \
    --remote-allow-origins='*' --no-first-run --no-default-browser-check \
    --new-window about:blank >/tmp/opencode/certs-chrome.log 2>&1 < /dev/null &
  for _ in $(seq 1 25); do sleep 1; up && return 0; done
  echo "FAILED to start chrome — see /tmp/opencode/certs-chrome.log"; return 1
}

signed_in() {
  # Navigate to the probe route and see whether the platform bounced us to its login.
  "$PY" "$CDP" goto "${PROBES[$1]}" --tab 0 >/dev/null 2>&1
  sleep 6
  local url
  url=$("$PY" "$CDP" eval 'location.href' --tab 0 2>/dev/null | tail -1)
  case "$url" in
    *sign_in*|*login*|*"Sign in"*|*oauth2/authorize*|*account/login*) return 1 ;;
    *) return 0 ;;
  esac
}

cmd="${1:-all}"

if [ "$cmd" = "status" ]; then
  start_chrome || exit 1
  for k in kaggle mslearn google hackerrank; do
    if signed_in "$k"; then printf "  ✓ %-12s signed in\n" "$k"
    else printf "  ✗ %-12s needs sign-in\n" "$k"; fi
  done
  exit 0
fi

start_chrome || exit 1
keys=(kaggle mslearn google hackerrank)
[ "$cmd" != "all" ] && keys=("$cmd")

for k in "${keys[@]}"; do
  target="${TARGETS[$k]:-}"
  [ -z "$target" ] && { echo "unknown platform: $k"; continue; }
  if signed_in "$k"; then echo "  ✓ $k already signed in"; continue; fi
  echo "  → opening $k — click 'Sign in with Google' (Google is already signed in here)"
  "$PY" "$CDP" goto "$target" --tab 0 >/dev/null 2>&1
done

echo
echo "Done opening. Sign in with Google on each tab, then re-run:  $0 status"
