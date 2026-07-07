---
title: "Development Path JP"
language: "jp"
source_note: "Development Path"
source_repo: "https://github.com/edwinmeng163-oss/UEAtelier"
source_branch: "main"
source_head: "421440e"
source_describe: "v0.34.0-1-g421440e"
generated: "2026-07-04"
---
# Development Path JP

git history、GitHub releases、リリース文書から見た発展経路です。完全な first-parent commit log は [[Git First-Parent History]] にあります。

## Milestones

### 2026-04-27 to 2026-05-02 - 基礎構築

初期 Unreal project、MCP scaffold/apply/rollback/build/test pipeline、supervisor、project memory、skills、Workbench UI。

### 2026-05-04 to 2026-05-07 - 分割と Registry

薄い module lifecycle、category files、dispatcher、protocol、handler registry、execution guards、verifiers、RAG/workflow tools。

### 2026-05-10 to 2026-05-12 - ローカル知識と Bridge の時代

Agent handoff ドキュメント、RAG closed loop、multi-provider AI、Codex Desktop bridge、クロスプラットフォーム bridge transport、UE 5.6 下限互換(単一 shim header + pre-commit hook)。

### 2026-05-12 to 2026-05-14 - Export gate と最初の pilot パッケージ

最初の tags: export gating + path resolver + chat panel buttons(v0.11.0-export-gate、2026-05-12)、デュアルエンジン互換 pass 2(v0.11.3)、bridge MCP discovery 修復(v0.11.4)、scaffold graduations(v0.11.5)、最初の Mac UE 5.6 + 5.7 source-only pilot パッケージ(v0.12.0-pilot-mac-ue56-ue57、2026-05-13)、クロスプラットフォーム Mac + Win UE 5.7 pilot(v0.12.1-pilot-crossplatform、2026-05-14)。

### v0.14 to v0.19 - Python track と Task Atlas

Python runtime smoke、install verification、Task Atlas foundation、skills/RAG promotion、Make Tool、label backfill。

### v0.20 to v0.27 - 検証と安全改革

automation/diagnostics/PIE smoke、UEAtelier へのリブランド(v0.22.2)、cli-anything-ueatelier Python CLI(v0.23.0)、provider presets、Codex rewrite、approval gate、Python user-tool track、core C++ wall-off。

### v0.28 to v0.32 - Authoring / Code Tools / Composites

Blueprint gameplay authoring、Code Tools、call_tool、captured args、Make Tool Set rework、protocol conformance。

### v0.33.0-preview - UE 5.8 official MCP validation

experimental branch。`:8765` + opt-in `:8000` official ToolsetRegistry track。mainline ではない。tag `v0.33.0-preview`(commit `62c1893`)は 2026-07-03 02:45 +0900 に作成され、`v0.34.0` tag(2026-07-03 00:10 +0900)より後。ブランチは `experiment/v0.33-ue58-validation`。

### v0.34.0 - 最新公開版

vetted-toolset authority と Codex bridge network fix。UE 5.6/5.7 public line。

## Recent History Source

完全な原文 / 完整原文: [[Development Path]], [[GitHub Release History]], [[Git First-Parent History]]

```text
2026-07-03 421440e  (HEAD -> main, origin/main, origin/HEAD, claude/gallant-sanderson-832638) docs: fill v0.34.0 Win zip SHA-256 into release notes (all languages)
2026-07-03 dc09f70  (tag: v0.34.0) release: v0.34.0 — vetted-toolset standing authority + bridge network fix
2026-07-02 29f18c6  test(taskatlas): load SmokeFailedBumps fixture into the registry before smoke
2026-07-02 74dba2c  docs: v0.34.0 release notes (EN/中文/日本語) + version bumps
2026-07-02 7ef4313  fix(bridge): enable workspace-write network access for in-editor AI MCP calls
2026-07-02 bd25f37  (origin/feature/v0.34-maketoolset-ai-redesign, feature/v0.34-maketoolset-ai-redesign) feat(maketoolset): approve-modal per-step policy reasons (W2 polish)
2026-07-02 8f25812  feat(maketoolset): in-editor vetting flow for made tools (vetting W2)
2026-07-02 f253e50  feat(maketoolset): composite source-policy validator (vetting W1)
2026-07-02 0c45d59  feat(maketoolset): wire vetted-toolset scope into call_tool (Chunk 0.2)
2026-07-02 14edbc3  feat(maketoolset): add inert vetted-toolset policy seam (Chunk 0.0+0.1)
2026-07-02 d9f02f8  docs(v0.34): Make Tool Set AI-redesign Chunk 0 R0 spec
2026-06-11 7e796ca  (tag: v0.32.2, claude/objective-northcutt-48d975, claude/great-hawking-865107, claude/epic-kalam-322f5c, claude/elastic-allen-4eeeed, claude/agitated-meitner-dde1f3) release: v0.32.2 — MCP protocol conformance fix + wire-shape guardrails
2026-06-11 5d8e1e0  docs: refresh v0.32.2 user-facing install and deployment docs
2026-06-11 bd4b13d  fix(code-tools): exclude generated/runtime dirs at any path depth
2026-06-10 a87d63e  test(mcp): add official-SDK conformance smoke as release gate
2026-06-10 ecef387  test(mcp): pin protocol response shapes with key-whitelist guardrails
2026-06-10 fa22576  fix(mcp): strip non-spec structuredContent from tools/list result
2026-06-10 8859844  (tag: v0.32.1, claude/awesome-grothendieck-0be944) release: v0.32.1 — Windows Codex CLI provider + dev-host baseline cleanup
2026-06-10 e779259  (fix/dev-host-baseline-cleanup) test: dev-host automation baseline cleanup
2026-06-10 b2c5ac1  (origin/fix/win-codex-cli-provider, fix/win-codex-cli-provider) provider(codex-cli): Windows support via direct codex.exe spawn
2026-06-02 2a1018d  (experiment/post-4028be5) docs: post-v0.32.0 status refresh
2026-06-02 44b8e5c  (tag: v0.32.0) release: v0.32.0 — Make Tool Set rework + CLI↔Chat sync (stable)
2026-06-02 5a34af5  task-atlas: chat sync MCP tools + protocol B/C hardening (chunk 9 rework)
2026-06-02 d03e383  test: complete Task Atlas e2e and tools/list version coverage (chunk 8/8 rework)
2026-06-02 dedf744  task-atlas: add user tool list version tracking (chunk 7/8 rework)
2026-06-02 0650f56  task-atlas: thin UI handlers for made-tool actions (chunk 6/8 rework)
2026-06-02 d7ade4b  task-atlas: register made-tool MCP wrappers (chunk 5/8 rework)
2026-06-02 8bee31b  task-atlas: implement made-tool service actions (chunk 4/8 rework)
2026-06-01 fa0c0fe  task-atlas: implement MakeComposite transaction (chunk 3/8 rework)
2026-06-01 3c07b87  task-atlas: implement ClassifyTask and ListMadeTools (chunk 2/8 rework)
2026-06-01 3d71673  task-atlas: add service skeleton stubs (chunk 1/8 rework)
2026-06-01 4028be5  fix(usertool): run smoke Python on game thread so composites can call_tool
2026-06-01 6cca627  fix(task-atlas): composite policy-denied steps are expected, not smoke failures
2026-06-01 104439d  feat(task-atlas): rename Make Tool -> Make Tool Set + Made Tools manage/delete panel
2026-05-31 c063873  fix(usertool): smoke lock release must stay on the acquiring thread
2026-05-31 45d6cc9  (tag: v0.31.0) chore(release): bump UnrealMcp to v0.31.0 (Version 45)
2026-05-31 cea1cca  docs(planning): v0.31 stage 3 §10.3 R0 verdict — defer isolated C++ extension
2026-05-31 7b7377b  docs(capture): v0.31 stage2 Wave E — captured-args security model + agent guide
2026-05-31 baf4559  feat(task-atlas): v0.31 stage2 Wave D — preview composite generator + reentrant-reload deadlock fix
2026-05-31 32b901f  feat(task-atlas): v0.31 stage2 Wave C — schema v2 ordered stepRefs + replay eligibility
2026-05-31 7a6d0ea  feat(capture): v0.31 stage2 Wave B — private captured-args store + RAG isolation
2026-05-31 46886a5  feat(capture): v0.31 stage2 Wave A — ActivityLog eventId + arg redaction foundation
2026-05-31 a7cad6a  docs(planning): v0.31 stage-2 preview-composite R1-locked plan
2026-05-31 72904b9  refactor(hash): consolidate 5 self-implemented SHA-256 into UnrealMcp::HashUtils
2026-05-30 7ce9775  (tag: v0.30.0) fix(packaging): mirror PyToolSamples copy into package_plugin.ps1
2026-05-30 d4d150c  chore(gitignore): ignore example-host local byproducts + LFS hooks
2026-05-30 cc2d565  fix(packaging): include Tools/UnrealMcpPyToolSamples in release zip
2026-05-30 bb7eb74  chore(release): bump UnrealMcp to v0.30.0 (Version 44)
2026-05-30 119ea5e  feat(task-atlas): v0.30 Wave C — composite Python user-tool generation
2026-05-30 a0e7530  feat(call_tool): v0.30 Wave B — Python helper + return contract + full-chain test
2026-05-30 f3f8a15  feat(call_tool): v0.30 Wave A — fail-closed policy + UFUNCTION + matrix test
2026-05-29 ef560e9  docs(readme): v0.29.0 latest-release pointer (EN/zh/ja) -> Code Tools, 181 tools
2026-05-29 756a5a4  (tag: v0.29.0) docs(code-tools): v0.29 Wave C — Code Tools docs + bump to 0.29.0
2026-05-29 00d495a  feat(tools): v0.29 Wave B — Code Tools write closure (preview/apply/rollback)
2026-05-29 30e4bc7  feat(tools): v0.29 Wave A — code category + read-only Code Tools + path policy
2026-05-29 8ebbf7b  docs(planning): v0.29 scope decision — detach §10.3 / cpp_extension_tool
2026-05-29 3a531d6  docs(planning): import v0.28 cycle summary + v0.29 Code Tools plan
2026-05-24 1fa4f74  docs(readme): v0.28.0 trilingual README — capabilities, tool list, 174-tool count, release link
2026-05-24 e46bbf2  (tag: v0.28.0) feat(tools): v0.28.0 — core Blueprint authoring + playable-character closure + runtime verification
2026-05-24 986c346  release: v0.27.1 — version bump + changelog + third-person basic-Character fallback
2026-05-24 d367693  feat(tools): v0.27.1 Wave 2 — playable gameplay-setup tools (2 core + Python suite)
2026-05-23 f5ed138  feat(self-extension): v0.27.1 Wave 1 — make the self-extension toolchain Python-track-aware
2026-05-23 8307c51  (tag: v0.27.0) feat(security): v0.27.0 — wall off core C++ from the AI; self-extension = Python user track only
2026-05-23 6f54661  (tag: v0.26.3) feat(ui): v0.26.3 — ChatPanel UX (editable model field + export Save-As/reveal)
2026-05-23 9757484  fix(content): restore lost WorldDataLayers external actor for Lvl_TopDown (resolves dangling-ref startup error)
2026-05-23 e41d8f1  docs: add Karpathy coding-discipline guidelines to CLAUDE.md + AGENTS.md
2026-05-23 15d54d1  (tag: v0.26.2) fix(reliability): v0.26.2 — stop test config pollution + fix mcp_user_tool_smoke strict schema
2026-05-23 fa1bd20  docs(skills): add karpathy-guidelines skill (MIT, from multica-ai/andrej-karpathy-skills)
2026-05-22 551bd7d  (tag: v0.26.1) feat(prompt): v0.26.1 — wire skills discovery into central system prompt (rule 7)
2026-05-22 524bda5  docs(skills): add mcp-capability-routing front-door skill + cross-ref from self-extension
2026-05-22 59c8bf6  docs(packaging): capture v0.26.0 ship lessons (untracked-file zip leak + Win-zip CI timing race)
2026-05-22 09a6586  (tag: v0.26.0) feat(reform-c): v0.26.0 — extension safety (approval gate + Python user-extension track + lifecycle)
2026-05-21 33a88b5  (tag: v0.25.0) feat(codex): v0.25.0 Reform B — rewrite Codex CLI provider around `codex exec`
2026-05-21 fc86ccd  (tag: v0.24.4) fix(codex): v0.24.4 — harden CodexProvider bash command construction + write Provider invariants doc
2026-05-21 4d45e76  (tag: v0.24.3) fix(codex): prepend dev tool PATH to Codex CLI subprocess invocations
2026-05-21 6841428  (tag: v0.24.2) chore: v0.24.2 hotfix — hide deprecated OpenAI* UI + intl-first preset URLs
2026-05-21 dcbef47  (tag: v0.24.1) fix(provider-presets): handle nested settings chain events
2026-05-21 774528d  (tag: v0.24.0) chore(release): v0.24.0 — version bump, README + AGENTS refresh, menu sweep
2026-05-21 c40e4e1  fix(provider): preserve Kimi reasoning_content across tool calls
2026-05-20 4e63dc0  feat(settings): add AI provider preset system (Phase 1 — data + UI)
```
