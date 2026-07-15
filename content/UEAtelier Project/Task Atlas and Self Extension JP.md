---
title: "Task Atlas and Self Extension JP"
language: "jp"
source_note: "Task Atlas and Self Extension"
source_repo: "https://github.com/edwinmeng163-oss/UEAtelier"
source_branch: "main"
source_head: "6e7b775"
source_describe: "v0.35.0-1-g6e7b775"
generated: "2026-07-14"
---
# Task Atlas and Self Extension JP

Task Atlas は ActivityLog から workflow records を作り、rating / pinning / skill promotion / RAG promotion / Make Tool Set へつなげます。

## Key Points

- Task files: `Saved/UnrealMcp/Tasks/*.json`。
- v2 task schema は ordered `stepRefs`、capture refs、policy classification、replay eligibility を持つ。
- `Make Tool Set` は `Tools/UnrealMcpPyTools/<atlas_*>/` に composite Python user tool を生成。
- eligibility ベース分流（v0.32.0 以降）：`preview_ready` のみ composite を生成（smoke は明示的 Test Now / `unreal.task_atlas_smoke_made_tool`、auto-smoke なし）；`partial` / `skeleton_pre_capture` は `Saved/UnrealMcp/TaskAtlasDrafts/` に markdown のみ；`blocked` は Make Tool Set ボタン無効化。
- v0.34.0 では in-editor approval により vetted real writes が可能。
- approval は live `main.py` SHA-256 に binding され、audit event を出す。
- vetting は同じ made-tools 行の **Revoke** で撤回可能（fail-safe）；live `main.py` hash が変わると dry-run wall が再適用；wire/MCP clients は vetting を付与できない。
- Python user tools は `call_tool` / `call_tool_raw` を通じて visible core `unreal.*` tools を compose する。

完全な原文: [[Task Atlas and Self Extension]]。
