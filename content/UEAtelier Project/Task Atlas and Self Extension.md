---
source_repo: "https://github.com/edwinmeng163-oss/UEAtelier"
source_branch: "main"
source_head: "421440e"
source_describe: "v0.34.0-1-g421440e"
generated: "2026-07-04"
---
# Task Atlas and Self Extension

## Task Atlas

Task Atlas turns local ActivityLog evidence into reviewable workflow records under `Saved/UnrealMcp/Tasks/`. It is local-first and git-ignored (`Saved/` is in `.gitignore`). Promotion outputs stay local too: `To RAG` writes `Saved/UnrealMcp/KnowledgeSources/TaskAtlas/<taskId>.md` (indexed as `task-atlas` KnowledgeCards after `unreal.knowledge_index_refresh`), and `Distill Skill` writes a local skill draft via `unreal.skill_distill_from_activity`; only `unreal.skill_promote_draft` moves a reviewed draft into the versioned `Tools/UnrealMcpSkills/` tree.

Main Task Atlas tools:

- `unreal.activity_log_annotate`
- `unreal.task_list`
- `unreal.task_describe`
- `unreal.task_rate`
- `unreal.task_pin`
- `unreal.task_label_backfill`
- `unreal.task_atlas_make_composite`
- `unreal.task_atlas_list_made_tools`
- `unreal.task_atlas_delete_made_tool`
- `unreal.task_atlas_smoke_made_tool`
- `unreal.task_atlas_promote_to_rag`

## Task JSON v2

Task files include ordered `stepRefs` with capture refs, policy classification, and replay eligibility. `criticalPath` remains a deduped human summary, while `stepRefs` preserves repeated tool calls for composite generation.

Replay eligibility values:

- `preview_ready`
- `partial`
- `skeleton_pre_capture`
- `blocked`

`replayEligibility` routes the product outcome since v0.32.0: only `preview_ready` tasks generate a composite (its `tool.json` carries honest `compositeKind` and `replayStatus=preview_only` labels, never claiming real replay); `partial` / `skeleton_pre_capture` yield markdown-only drafts under `Saved/UnrealMcp/TaskAtlasDrafts/`; `blocked` yields no artifact.

## Make Tool Set

Since v0.32.0, generation is eligibility-aware: for `preview_ready` tasks, `Make Tool Set` writes `main.py` plus closed-schema `tool.json` (with `pythonHandlerSha256` and `smokeArgs`) under `Tools/UnrealMcpPyTools/<atlas_*>/` via a staging dir + atomic rename, and reloads the user registry (reload-rejected writes roll back). Smoke is explicit — the Test Now button or `unreal.task_atlas_smoke_made_tool` (supports dryRun) — with no auto-smoke. `partial` / `skeleton_pre_capture` tasks produce markdown-only drafts under `Saved/UnrealMcp/TaskAtlasDrafts/`. `blocked` tasks disable the Make Tool Set button (tooltip shows the first blocked step); via CLI, `unreal.task_atlas_make_composite` with `preferDocumentOnly:true` returns a `Blocked` outcome with markdown-only output. Preview composites embed sanitized captured defaults as JSON data constants and call core tools through `call_tool_raw`.

## Captured Arguments

Private captured arguments live under:

```text
Saved/UnrealMcp/CapturedToolArgs/<sessionId>/<eventId>.json
```

Secret-looking field names are replaced by `<redacted:secret>`; home and project path prefixes become `<home>` and `<project>`; oversized values are omitted and oversized total payloads are skipped; high-risk tools are skipped entirely — the skip list is `unreal.execute_python`, `unreal.execute_python_file`, `unreal.execute_console_command`, `unreal.code_preview_change`, `unreal.mcp_patch_scaffold_patch`, `unreal.mcp_validate_cpp_patch`. ActivityLog stores public capture metadata only: `captureStatus`, optional `captureRef`, optional `captureSha256`, and `redactionSummaryPublic`. Reads are path-constrained to the store; `ReadCapturedArgs` recomputes the JSON SHA-256 against the sidecar hash and rejects mismatches. The RagCanary automation test guards that RAG indexing never sees `CapturedToolArgs`.

## Vetted Real Writes

As of v0.34.0, a Task Atlas generated composite can be approved in-editor with `Approve real writes`. Approval is fail-closed:

- Source policy allows only closed imports.
- No dynamic access/reflection, direct Unreal API usage, or file IO.
- Generated manifest must be a subset of the allowed call list.
- Authority binds to the live `main.py` SHA-256.
- Real vetted-context test must pass.
- Hash is rechecked before atomic marker write.
- Registry reload follows marker persistence.
- `toolset_vetted` and `vetted_real_write` audit events record the authority path and use.

Hard denies remain non-overridable: hidden tools, user-to-user calls, call-tool depth, and `workflow_run`.

Revocation is available from the same made-tools row (**Revoke**) and is fail-safe; any code edit that changes the live `main.py` hash re-applies the dry-run wall. Wire/MCP clients can never grant vetting — only the in-editor human flow persists the vetted marker. The made-tools list and `unreal.user_registry_introspect` report vetted marker fields (`vetted`, `markerSha`, `liveShaMatches`, approver, approval time, revocation fields, live hash state). v0.34.0 gates are covered by automation: VetMadeTool 11/11, VettedToolset 5/5, CallTool 9/9, TaskAtlas 38/38.

## Python User-Tool Composition

Python user tools receive injected helpers:

```python
call_tool(name, args=None)
call_tool_raw(name, args=None)
```

They route through `unreal.UnrealMcpCallTool.call_tool` into visible core `unreal.*` tools. Policy decisions are fail-closed: allow read-safe core tools, force dry run for dry-run-capable writes, and deny hidden/dynamic/workflow/user/nested unsafe targets. Current documented matrix: 61 allow, 26 force-dry-run, 82 deny.

## Normal AI Self-Extension Flow

1. Search/recommend with `unreal.knowledge_search`, `unreal.tool_recommend`, or `unreal.tool_gap_analyze`.
2. Preview with `unreal.preview_change_plan`.
3. Compose existing tools when possible.
4. Scaffold a Python user tool only for true gaps or explicit callable-tool requests.
5. Run `unreal.mcp_user_registry_reload`.
6. Run `unreal.mcp_user_tool_smoke`.
7. Call the new tool only when lifecycle metadata says `callableNow=true`.
8. Run RAG evals if RAG/docs/recommendation/registry metadata changed.
9. Capture an after snapshot, diff it, and run `unreal.verify_task_outcome` when no restart deferral is needed.
10. Audit and inspect workbench status.

## Manual Developer Core Flow

Core C++ apply/pipeline remains hidden from AI-facing `tools/list` and is manual/developer-only. Recommended sequence:

```text
preview_change_plan -> validate_schema -> generate_tests -> apply_dry_run -> capture_before_snapshot -> apply -> build -> test_suite -> capture_after_snapshot -> diff_project_snapshot -> verify_task_outcome
```

Manual core tools by name: `unreal.mcp_validate_tool_schema` (OpenAI function-calling compat), `unreal.mcp_validate_cpp_patch`, `unreal.mcp_patch_scaffold_patch` (dry run + backup), hidden `unreal.mcp_apply_scaffold` (registry/registrar/handler/dispatcher patches with dry run, backup, idempotence), `unreal.mcp_build_editor` / `unreal.mcp_build_game` / `unreal.mcp_build_server` / `unreal.mcp_build_client` / `unreal.mcp_build_packaged` (UBT / RunUAT), `unreal.mcp_run_tool_test` / `unreal.mcp_run_test_suite` (versioned core suite at `Tools/UnrealMcpTests/Core`), `unreal.mcp_rollback_last_extension` / `unreal.mcp_rollback_to_manifest`, hidden `unreal.mcp_extension_pipeline`, `unreal.mcp_workbench_status`, `unreal.tools.export_package` / `unreal.tools.import_package`, and supervisor install via `python3 Tools/unreal_mcp_supervisor.py install --platform all --output-dir Tools/UnrealMcpSupervisor`.

## Tool Sharing

Reviewed tools move via `unreal.tools.export_package` / `unreal.tools.import_package`. Export writes `Saved/UnrealMcp/Packages/<toolName>-<version>.zip` containing `manifest.json`, `registry/tool.json`, and optional `scaffold/`, `tests/`, `docs/`; the manifest schema is `Schemas/UnrealMcpToolPackageManifest.schema.json`, recording per-entry `path`, `kind`, `sizeBytes`, `sha256` plus `toolName`, `version`, `created_at`, `source_repo_commit`. Import (dry run first) validates the manifest, rejects unsafe archive paths, checks every SHA-256, and rejects duplicate registry names; real import requires the self-extension lock, writes scaffolds under `Tools/UnrealMcpToolScaffolds/<toolName>`, and appends to `Tools/UnrealMcpToolRegistry/tools.json` only when the name is absent. Afterwards run `python3 Tools/validate_tool_registry.py`, build, restart, then `unreal.mcp_tool_audit`.
