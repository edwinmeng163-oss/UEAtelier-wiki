---
title: "Current Object and Status"
source_repo: "https://github.com/edwinmeng163-oss/UEAtelier"
source_branch: "main"
source_head: "6e7b775"
source_describe: "v0.35.0-1-g6e7b775"
generated: "2026-07-14"
---
# Current Object and Status

## Current Object

UEAtelier is an Unreal Editor MCP self-extension workbench. The main object is the `Plugins/UnrealMcp` editor plugin, supported by a root development host project, project-root workflow tools, schemas, tests, docs, and local runtime state under `Saved/UnrealMcp`.

```yaml
product: UEAtelier
deliverable: Plugins/UnrealMcp
friendlyName: UEAtelier
versionName: 0.35.0
version: 48
type: Editor plugin
loadingPhase: PostEngineInit
requiredPlugin: PythonScriptPlugin
localDevelopmentHost: UEvolve.uproject
hostEngineAssociation: 5.7
supportedEngines:
  - UE 5.7 (primary)
  - UE 5.8 (primary)
  - UE 5.6 (maintenance compile canary; last packaged line is v0.34.0)
endpoint: http://127.0.0.1:8765/mcp
chatPanel: Window > UEAtelier Chat
workbenchPanel: Window > UEAtelier Workbench
registryTools: 190
visibleTools: 178
legacyHiddenTools: 12
```

## Product Goal

An Unreal Editor MCP self-extension workbench that lets AI add new editor automation capabilities under audit, dry run, backup, build, test, rollback, RAG, and long-memory safeguards.

## Current High-Level Feature Set

- Local MCP server inside Unreal Editor plus an in-editor Chat panel.
- Workbench panel aggregating status, audit, core tests, pipeline, and lock state.
- 12 tool categories with fixed schemas and registry policy metadata: self-extension (48), blueprint (30), editor (27), actors (21), widget (12), task-atlas (11), skills (10), verification (8), scaffold (7, incl. `unreal.scaffold_mcp_tool`), code (7), memory (5), material (4).
- Task Atlas extracts workflows from ActivityLog, supports task detail/rating/pinning, and can promote workflows to skill drafts, local RAG sources, or generated Python user-tool composites.
- Python user tools can compose visible core `unreal.*` tools through `call_tool` / `call_tool_raw`, with fail-closed policy and vetted-toolset authority only after in-editor human approval.
- Local RAG with KnowledgeCard records, lexical search, tool recommendation, gap analysis, workflow recommendation, and eval cases.
- Codex bridge daemon exposes `ws://127.0.0.1:8766/uevolve` and registers the Unreal MCP endpoint for Codex App Server turns.
- Multi-provider chat supports OpenAI Responses, OpenAI-compatible providers such as Kimi/GLM/DeepSeek/Qwen/Ollama, Anthropic Claude, Codex CLI, and Codex Desktop bridge.

## Version-Line Correction

The supported public `main` line and the experimental `v0.33.0-preview` line have different MCP structures. Do not describe v0.33 as the current mainline architecture.

| Line | Engine target | MCP structure | Status |
| --- | --- | --- | --- |
| `v0.35.0` / `main` | UE 5.7 + UE 5.8 (UE 5.6 maintenance compile canary) | UEAtelier-owned localhost MCP server at `:8765/mcp`; Codex bridge can reach it from workspace-write sandbox | latest supported public release |
| `v0.33.0-preview` | UE 5.8 validation | additive official `ToolsetRegistry + ModelContextProtocol` track at opt-in `:8000/mcp`, plus existing `:8765/mcp` | GitHub pre-release / experimental; branch does not merge to `main` as-is |

See [[v0.33 Official MCP Preview]] and [[GitHub Release History]].

## v0.35 Planned Transition

Batch 1 of this transition shipped on 2026-07-14 as `v0.35.0`: UE 5.7 and UE 5.8 are now the primary source targets (root host on 5.7, `Examples/UEvolveExample57` reused as the 5.8 validation host), UE 5.6 stays a maintenance compile canary, and the RAG knowledge layer got its reliability overhaul — recoverable index replacement, machine-readable index states, deterministic ASCII/CJK tokenization, engine-version-aware retrieval, and rank-aware eval gates. The dual-variant structure and optional Epic official-MCP integration remain for a later batch per the 2026-07-03 director decision. See [[v0.35 Development Plan]].

## Latest Public Release

`v0.35.0` (v0.35 Batch 1) makes UE 5.7 and UE 5.8 the primary targets and overhauls knowledge-index reliability and retrieval quality. It is a drop-in upgrade from `v0.34.0` for UE 5.7/5.8 hosts; no schema migration. UE 5.6 remains a maintenance compile canary — the last UE 5.6-packaged line is `v0.34.0`. Version `0.33` was an internal UE5.8 validation track, not a public release line.

## v0.34.0 Safety Model

- Approval is in-editor only. Wire/MCP clients cannot mint vetted authority.
- Source-policy validation requires closed imports, no dynamic access/reflection, no direct Unreal API usage, and no file IO.
- Approval is bound to the live `main.py` SHA-256 and re-checks the hash for TOCTOU drift.
- A real vetted-context test runs before marker persistence.
- Vetted marker writes are atomic and audited with `toolset_vetted`.
- Every vetted real write emits sanitized `vetted_real_write` audit.
- Revocation is fail-safe. Any live `main.py` hash drift restores the dry-run wall.
- Structural hard denies remain non-overridable: hidden tools, user-to-user calls, call-tool depth, and `workflow_run`.

## Verification State From Project Docs

- UE 5.7 and UE 5.8 dual-engine builds pass from wiped intermediates.
- Per engine: RAG 17/17, Gate D 1/1, EngineCompat 2/2, version migration 1/1, VetMadeTool 11/11, VettedToolset 5/5, CallTool 9/9, and TaskAtlas 38/38 pass.
- Visible `tools/list` count stays 178.
- Full-host automation (208 passed per engine) converges to two known baseline failures: `RunRecoversStale` and `PieSmoke.MapValidation`.
- Stage 2 e2e on fresh `/tmp` TP_Blank projects for both engines, including MCP SDK conformance 6/6; Python fetcher/installer tests 8/8.
- Windows UE 5.7/5.8 UBT validation is tracked post-release as GitHub issue #8 (CI packaging is not engine evidence).

## Registry Validation Snapshot

`python3 Tools/validate_tool_registry.py` returned `issueCount: 0` and `toolCount: 190` when this vault pack was generated. It also printed non-strict dispatch warnings that are part of the current baseline.

```text
    "verification",
    "widget"
  ],
  "dispatchCheck": {
    "allowlisted": 20,
    "matched": 78,
    "pythonExempted": 1,
    "strict": false,
    "warnings": 79
  },
  "handlerCount": 188,
  "issueCount": 0,
  "mirrorToolCount": 190,
  "schemaAliasPath": "Schemas/UnrealMcpToolRegistry.schema.json",
  "schemaMirrorPath": "Plugins/UnrealMcp/Resources/ToolRegistry/schema.json",
  "schemaPath": "Tools/UnrealMcpToolRegistry/schema.json",
  "testFixtureToolCount": 103,
  "toolCount": 190
}
dispatch check: 78 matched, 79 warnings, 20 allowlisted, 1 python exempted
```
