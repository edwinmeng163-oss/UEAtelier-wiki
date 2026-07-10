---
title: "Current Object and Status"
source_repo: "https://github.com/edwinmeng163-oss/UEAtelier"
source_branch: "main"
source_head: "36b6e27"
source_describe: "v0.34.0-2-g36b6e27"
generated: "2026-07-10"
---
# Current Object and Status

## Current Object

UEAtelier is an Unreal Editor MCP self-extension workbench. The main object is the `Plugins/UnrealMcp` editor plugin, supported by a root development host project, project-root workflow tools, schemas, tests, docs, and local runtime state under `Saved/UnrealMcp`.

```yaml
product: UEAtelier
deliverable: Plugins/UnrealMcp
friendlyName: UEAtelier
versionName: 0.34.0
version: 47
type: Editor plugin
loadingPhase: PostEngineInit
requiredPlugin: PythonScriptPlugin
localDevelopmentHost: UEvolve.uproject
hostEngineAssociation: 5.6
supportedEngines:
  - UE 5.6
  - UE 5.7
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
| `v0.34.0` / `main` | UE 5.6 + UE 5.7 | UEAtelier-owned localhost MCP server at `:8765/mcp`; Codex bridge can reach it from workspace-write sandbox | latest supported public release |
| `v0.33.0-preview` | UE 5.8 validation | additive official `ToolsetRegistry + ModelContextProtocol` track at opt-in `:8000/mcp`, plus existing `:8765/mcp` | GitHub pre-release / experimental; branch does not merge to `main` as-is |

See [[v0.33 Official MCP Preview]] and [[GitHub Release History]].

## v0.35 Planned Transition

v0.35 development will prioritize UE 5.7 and UE 5.8, with UE 5.6 retained initially as a transitional maintenance canary. RAG reliability and retrieval quality are the main product focus: test isolation, empty/stale index recovery, schema parity, engine-version-aware retrieval, explainable ranking, and rank-aware eval gates. This is a development decision, not a statement of current release support. See [[v0.35 Development Plan]].

## Latest Public Release

`v0.34.0` ships the Make-Tool-Set vetting foundation and Codex bridge network fix. It is a drop-in upgrade from `v0.32.2` for UE 5.6 and UE 5.7. Version `0.33` was an internal UE5.8 validation track, not a public release line.

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

- UE 5.6 and UE 5.7 dual-engine builds pass.
- VetMadeTool 11/11, VettedToolset 5/5, CallTool 9/9, and TaskAtlas 38/38 pass.
- Visible `tools/list` count stays 178.
- Full-host automation converges to two known baseline failures: `RunRecoversStale` and `PieSmoke.MapValidation`.

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
