# Roni Saguey

**I build the platforms AI agents run inside: LLM routing, context compression, agent memory, and the
control plane that keeps them observable and stoppable.**

Self-taught engineer. I ship end to end - architecture, implementation, tests, deployment - mostly in
Python, JavaScript/Node and shell. My work sits where model behaviour meets real systems: routing across
providers, keeping agent context small, remembering what matters, and making autonomous agents safe to
run unattended.

## Flagship work

| Repository | What it is | Stack |
|---|---|---|
| [webchat-to-api-harness](https://github.com/ronisaguey-ux/webchat-to-api-harness) | OpenAI- and Anthropic-compatible HTTP API backed by a real webchat session. Any agentic client (Aider, LiteLLM, Claude Code via `ANTHROPIC_BASE_URL`) can drive a session you own, with full file and bash tool calling. | JavaScript, Node, Puppeteer |
| [commit-condom](https://github.com/ronisaguey-ux/commit-condom) | Pre-push policy gate for coding agents: commit size, file count and secret patterns checked behind a credential-isolating proxy. Found and fixed a silent failure where every default secret pattern was skipped. | JavaScript, git hooks |
| [tool-call-compactor](https://github.com/ronisaguey-ux/tool-call-compactor) | Cuts prompt cost for tool-heavy agents: 1,100+ tools exposed through a searchable index instead of every schema sitting in the context window. Zero runtime dependencies. | JavaScript, MCP |
| [AI-coding-orchestrator](https://github.com/ronisaguey-ux/AI-coding-orchestrator) | Multi-lane autonomous fix-executor: parses audit plans into disjoint-file batches, drives parallel LLM lanes with failover, applies byte-exact edits, verifies in-process and escalates stalled steps. | Python |
| [crypto-experiment](https://github.com/ronisaguey-ux/crypto-experiment) | Testing whether aggregated copy-trading signals from a public ledger can produce persistent edge, paper-first, with monitoring before any capital is at risk. | Python |

## What I run daily

A persistent multi-agent platform on Linux and systemd: four autonomous agents (research, sales, data
brokerage, content) driven by my own harness - the API harness above, a multi-provider LLM router with
ranked failover and per-model cooldowns, a tool-definition compactor, an agent memory engine, and a
one-key control plane that kills in-flight work and interrupts every session. If an agent cannot be
stopped reliably, it is not ready to run unattended.

## Other public work

- [free-ai](https://github.com/ronisaguey-ux/free-ai) - one local endpoint in front of 50+ models across
  10 providers: ranked fallback, linear per-model cooldown, zero dependencies.
- [DriftClean](https://github.com/ronisaguey-ux/DriftClean) - intercepts a model's reasoning stream and
  scores it for refusal, fake compliance and off-task drift before emitting an event.
- [aml-hackathon](https://github.com/ronisaguey-ux/aml-hackathon) - AxiomMem: competition memory engine
  (FastAPI, SQLite WAL, embeddings) verified end to end against a live competition API.
- [opencv-agentic-inspector](https://github.com/ronisaguey-ux/opencv-agentic-inspector) - OpenCV and
  YOLOv10 ONNX defect detection with a reasoning layer that weighs an isolated blemish against a repeated
  fault trend.
- [lablens](https://github.com/ronisaguey-ux/lablens) - photograph a lab report; out-of-range values
  explained in plain English, grounded in reference ranges.
- [devpost-radar](https://github.com/ronisaguey-ux/devpost-radar) - finds which open hackathons a given
  person is actually eligible to enter.

## Stack

Python, JavaScript/Node, TypeScript, Bash, SQL. FastAPI, Flask, Express, React, PostgreSQL, SQLite (WAL),
Docker, Linux, systemd, Cloudflare tunnels, git. LLM infrastructure: multi-provider routing and failover,
MCP servers, RAG and agent memory, prompt and context compression, evaluation harnesses. Computer vision:
OpenCV, YOLO ONNX, OCR. Browser automation: Puppeteer, CDP.

40 repositories, 28 public. Everything here was designed, implemented, tested and deployed by hand.

## Contact

- Email: roni.saguey@gmail.com
- Location: South Florida, United States (US Eastern)
- All repositories: https://github.com/ronisaguey-ux?tab=repositories
