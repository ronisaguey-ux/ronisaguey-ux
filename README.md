# Roni Saguey

**I build the platforms AI agents run inside: LLM routing, context compression, agent memory, and the
control plane that keeps them observable and stoppable.**

<div align="center">

[![Projects](https://img.shields.io/badge/Projects-42-16181d?style=flat-square)](https://github.com/ronisaguey-ux?tab=repositories)
[![Focus](https://img.shields.io/badge/Focus-Agent%20infrastructure%20%C2%B7%20LLM%20tooling-1a56db?style=flat-square)](#flagship-repositories)
[![Resume](https://img.shields.io/badge/R%C3%A9sum%C3%A9-PDF-92400e?style=flat-square)](./Roni-Saguey-Resume.pdf)

</div>

Self-taught engineer. I ship end to end: architecture, implementation, tests, deployment. Mostly Python,
JavaScript/Node and shell. My work sits where model behaviour meets real systems: routing across providers,
keeping agent context small, remembering what matters, and making autonomous agents safe to leave running.

## Flagship repositories

**[Helpotron](https://github.com/ronisaguey-ux/Helpotron)**
Autonomous academic study operating system and multi-agent workflow platform for paying university students.
Orchestrates 15-category autonomous audit and fix swarms across independent worktrees, multi-agent MCP tool
triage, and SQLite WAL persistence. Features a real-time student command center, automated course-material
ingestion, idempotent token billing ledgers, and zero-compromise production safety.
`Python` `FastAPI` `React 19` `Tailwind v4` `SQLite WAL` `MCP`

**[T2B](https://github.com/ronisaguey-ux/T2B)**
Autonomous qualification and sales engagement engine for trade contractors. Ingests municipal permit ETL
pipelines and property databases, drives multi-channel (Twilio SMS and Telegram) conversational qualification
loops with zero human intervention, and operates a paywalled contractor portal with instant lead unlocking
and Stripe credit integration.
`Python` `FastAPI` `Twilio` `PostgreSQL` `Tailwind` `ETL`

**[felicity](https://github.com/ronisaguey-ux/felicity)**
Consolidated defensive OpSec engine: static vulnerability auditing, AST lookahead analysis, high-entropy
secret detection, AI agent/MCP sandbox validation, model weight deserialization scanner, and air-gapped pre-push
git policy gate. Synthesizes detection primitives across 35+ security tools with zero external dependencies and
native SARIF 2.1.0 output.
`Python` `AST` `OpSec` `SARIF` `Git Hooks`

**[commit-condom](https://github.com/ronisaguey-ux/commit-condom)**
Pre-push policy gate for coding agents: commit size, file count and secret patterns checked behind a
credential-isolating proxy. Found and fixed a silent failure where every default secret pattern was skipped,
a gate that inspected nothing and passed everything. `JavaScript` `git hooks`

**[token-condom](https://github.com/ronisaguey-ux/token-condom)**
Deterministic write-time tool output compressor and deduplicator for agent context windows. Collapses repetitive
terminal logs, test runs, JSON structures, and git diffs before prompt ingestion to guarantee byte-exact prefix
caching and prevent cache-miss cost amplification across DeepSeek, Claude, and OpenAI.
`Node.js` `Bash` `MCP` `Prompt Caching`

**[tool-call-compactor](https://github.com/ronisaguey-ux/tool-call-compactor)**
Dynamic MCP tool schema compressor and inverted search index. Compresses dense JSON schemas into 30-100 word
functional definitions with titles so models comprehend tool capabilities without context bloat, retrieving full
schemas only when explicitly called across 1,100+ tools.
`JavaScript` `MCP`

**[context-rot-detector](https://github.com/ronisaguey-ux/context-rot-detector)**
Real-time context degradation telemetry engine for 900k-token agent windows. Attaches to active sessions to track
15 behavioral signals (instruction amnesia, attention dilution, token bucket exhaustion, error loops) and calculates
the mathematical compaction knee to execute compaction at the optimal coherence and cost window.
`Python` `DuckDB` `Telemetry`

**[memory-condom](https://github.com/ronisaguey-ux/memory-condom)**
Persistent structured memory engine injected into every agent turn while safeguarding provider prefix caches.
Enforces append-only memory mutations upwards, permitting in-place rewrites exclusively after compaction events,
paired with strict word budgets and terse output constraints to stop agents from yapping away context.
`Python` `JSONL` `Prompt Caching`

**[webchat-to-api-harness](https://github.com/ronisaguey-ux/webchat-to-api-harness)**
OpenAI- and Anthropic-compatible HTTP API backed by a real webchat session. Any agentic client, Aider,
LiteLLM, or Claude Code via `ANTHROPIC_BASE_URL`, can drive a session you own, with full file and bash tool
calling. `JavaScript` `Node` `Puppeteer`

**[commit-condom](https://github.com/ronisaguey-ux/commit-condom)**
Pre-push policy gate for coding agents: commit size, file count and secret patterns checked behind a
credential-isolating proxy. Found and fixed a silent failure where every default secret pattern was skipped,
a gate that inspected nothing and passed everything. `JavaScript` `git hooks`

**[tool-call-compactor](https://github.com/ronisaguey-ux/tool-call-compactor)**
Cuts prompt cost for tool-heavy agents: 1,100+ tools exposed through a searchable index instead of every
schema sitting in the context window. Zero runtime dependencies. `JavaScript` `MCP`

**[AI-coding-orchestrator](https://github.com/ronisaguey-ux/AI-coding-orchestrator)**
Multi-lane autonomous fix-executor: parses audit plans into disjoint-file batches, drives parallel LLM lanes
with failover, applies byte-exact edits, verifies in-process, and escalates stalled steps through a three-tier
solver. `Python`

**[anti-spiral.js](https://github.com/ronisaguey-ux/anti-spiral.js)**
Catches genuine reasoning loops mid-stream and aborts the turn: the same line restated instead of progress,
cut at a few hundred characters instead of tens of thousands. One measured case ran 26,669 characters of the
same two lines repeated 1,006 times. Ordinary prose, code, logs and tables are left alone.
`JavaScript` `opencode plugin`

**[Laya-jev-mcp](https://github.com/ronisaguey-ux/Laya-jev-mcp)**
Calibrated probabilities for an agent's own decisions: give it a situation and candidate actions, it returns
a probability for each plus an `act`/`escalate` gate, so a 51/49 guess is refused instead of acted on. Two
engines behind one idiom, local Laya and remote Jev, where naming an unavailable engine is an error rather
than a silent substitution. `Python` `MCP`

**[crypto-experiment](https://github.com/ronisaguey-ux/crypto-experiment)**
Testing whether aggregated copy-trading signals from a public ledger can produce persistent edge.
Paper-first, with monitoring before any capital is at risk. `Python`

## What I run daily

A persistent multi-agent platform on Linux and systemd: four autonomous agents (research, sales, data
brokerage, content) on my own harness. The stack underneath is the API harness above, a multi-provider LLM
router with ranked failover and per-model cooldowns, a tool-definition compactor, an agent memory engine, and
a one-key control plane that kills in-flight work and interrupts every session. If an agent cannot be stopped
reliably, it is not ready to run unattended.

## Also public

- [free-ai](https://github.com/ronisaguey-ux/free-ai): one local endpoint in front of 50+ models across 10
  providers, ranked fallback, linear per-model cooldown, zero dependencies.
- [DriftClean](https://github.com/ronisaguey-ux/DriftClean): intercepts a model's reasoning stream and scores
  it for refusal, fake compliance and off-task drift before emitting an event.
- [aml-hackathon](https://github.com/ronisaguey-ux/aml-hackathon): AxiomMem, a competition memory engine
  (FastAPI, SQLite WAL, embeddings) verified end to end against a live competition API.
- [opencv-agentic-inspector](https://github.com/ronisaguey-ux/opencv-agentic-inspector): OpenCV and YOLOv10
  ONNX defect detection with a reasoning layer that weighs an isolated blemish against a repeated fault trend.
- [lablens](https://github.com/ronisaguey-ux/lablens): photograph a lab report, get out-of-range values
  explained in plain English and grounded in reference ranges.
- [devpost-radar](https://github.com/ronisaguey-ux/devpost-radar): finds which open hackathons a given person
  is actually eligible to enter.

## Stack

Python, JavaScript/Node, TypeScript, Bash, SQL. FastAPI, Flask, Express, React, PostgreSQL, SQLite (WAL),
Docker, Linux, systemd, Cloudflare tunnels, git. LLM infrastructure: multi-provider routing and failover, MCP
servers, RAG and agent memory, prompt and context compression, evaluation harnesses. Computer vision: OpenCV,
YOLO ONNX, OCR. Browser automation: Puppeteer, CDP.

42 repositories, 30 public. Everything here was designed, implemented, tested and deployed by hand.

## Contact

- Email: buisness@rs-systems-web.com
- Location: South Florida, United States (US Eastern)
- All repositories: https://github.com/ronisaguey-ux?tab=repositories
