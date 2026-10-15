<div align="center">

# Roni Saguey

**I build agent infrastructure — LLM routers, memory engines, and vision systems that ship.**

[![Projects](https://img.shields.io/badge/Projects-23-16181d?style=flat-square)](https://github.com/ronisaguey-ux?tab=repositories)
[![Focus](https://img.shields.io/badge/Focus-Agent%20Infra%20%C2%B7%20LLM%20Tooling%20%C2%B7%20CV-1a56db?style=flat-square)](#-featured-work)
[![Resume](https://img.shields.io/badge/R%C3%A9sum%C3%A9-PDF-92400e?style=flat-square)](./Roni-Saguey-Resume.pdf)

</div>

---

Self-taught engineer. I ship end-to-end — architecture, implementation, tests, deployment — mostly in
**Python**, **JavaScript/Node** and shell. My work sits where model behaviour meets real systems: routing
across providers, keeping agent context small, remembering what matters, and reading the physical world.

### 🔧 Featured Work

<table>
<tr>
<td width="50%" valign="top">

**🪄 [Webchat-to-API Harness](https://github.com/ronisaguey-ux/webchat-to-api-harness)** ★ 9

OpenAI- **and** Anthropic-compatible API backed by a real webchat tab (Puppeteer). Any agentic client —
Aider, LiteLLM, Claude Code via `ANTHROPIC_BASE_URL` — can drive a session you own, with full tool-call
support (file read/write, bash).

</td>
<td width="50%" valign="top">

**⚡ [free-ai](https://github.com/ronisaguey-ux/free-ai)** ★ 2

One local endpoint in front of every free LLM tier. Ranked model list, automatic fallback, per-model
cooldown. **Zero dependencies** — 50+ models across 10 providers.

</td>
</tr>
<tr>
<td width="50%" valign="top">

**🧠 [AxiomMem](https://github.com/ronisaguey-ux/aml-hackathon)**

Agent memory engine built for the *Agent Memory Challenge 2026*: execution continuity, temporal
resolution, zero-loss retrieval. FastAPI + SQLite (WAL), verified against the live competition API.

</td>
<td width="50%" valign="top">

**👁️ [Agentic Visual Inspector](https://github.com/ronisaguey-ux/opencv-agentic-inspector)**

*OpenCV AI Competition 2026 entry.* Doesn't just detect a defect — it investigates it against the
line's recent history and recommends a supervisor-readable action. Real-time on CPU.

</td>
</tr>
<tr>
<td width="50%" valign="top">

**🔒 [commit-condom](https://github.com/ronisaguey-ux/commit-condom)** ★ 1

A push gate for coding agents. The agent holds a placeholder credential, the proxy holds the real one,
and every push is inspected for size, file count and secrets before it reaches a remote.

</td>
<td width="50%" valign="top">

**🧹 [DriftClean](https://github.com/ronisaguey-ux/DriftClean)** ★ 2

Intercepts a model's reasoning stream, scores it for refusal / fake compliance / off-task drift, and gets
a second judge model's verdict before emitting a drift event.

</td>
</tr>
<tr>
<td width="50%" valign="top">

**🌽 [CornShield AI](https://github.com/ronisaguey-ux/4-H-hackathon)**

*4-H AI in Agriculture 2026.* Foliar disease early-detection and severity triage for Midwestern corn
growers, with extension-sourced treatment guidance. 21/21 tests passing.

</td>
<td width="50%" valign="top">

**🩸 [LabLens](https://github.com/ronisaguey-ux/lablens)**

Photograph a lab report; it reads the values, flags what's out of range, and explains each in plain
English — grounded in reference ranges, never a diagnosis.

</td>
</tr>
</table>

### 🧰 Stack

`Python` · `JavaScript / Node` · `Bash` · `SQL`
`LLM routing & fallback` · `agent memory` · `context compression` · `OpenCV / YOLO ONNX` · `OCR`
`FastAPI` · `Flask` · `SQLite (WAL)` · `Linux / systemd` · `Docker` · `Puppeteer / CDP` · `MCP` · `git`

### 🏁 Competitions

- **OpenCV AI Competition 2026** — Agentic Visual Inspector *(submitted)*
- **Agent Memory Challenge 2026** — AxiomMem *(built + live-verified)*
- **4-H AI in Agriculture 2026** — CornShield AI
- **ForgeHacks Online 2026** — ClarityCheck *(submitted)*

---

<div align="center">
<sub>Everything here was designed, implemented and tested by hand. — <a href="./Roni-Saguey-Resume.pdf">Résumé (PDF)</a></sub>
</div>
