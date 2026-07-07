---
title: "Task Atlas and Self Extension CN"
language: "cn"
source_note: "Task Atlas and Self Extension"
source_repo: "https://github.com/edwinmeng163-oss/UEAtelier"
source_branch: "main"
source_head: "421440e"
source_describe: "v0.34.0-1-g421440e"
generated: "2026-07-04"
---
# Task Atlas and Self Extension CN

Task Atlas 从 ActivityLog 生成 workflow records，并连接 rating / pinning / skill promotion / RAG promotion / Make Tool Set。

## Key Points

- Task files: `Saved/UnrealMcp/Tasks/*.json`。
- v2 task schema 包含 ordered `stepRefs`、capture refs、policy classification、replay eligibility。
- `Make Tool Set` 在 `Tools/UnrealMcpPyTools/<atlas_*>/` 生成 composite Python user tool。
- eligibility 分流（v0.32.0 起）：`preview_ready` 生成 composite（smoke 为显式 Test Now / `unreal.task_atlas_smoke_made_tool`，无 auto-smoke）；`partial` / `skeleton_pre_capture` 仅写 markdown 草稿到 `Saved/UnrealMcp/TaskAtlasDrafts/`；`blocked` 禁用 Make Tool Set 按钮。
- v0.34.0 通过 in-editor approval 支持 vetted real writes。
- approval 绑定 live `main.py` SHA-256，并写出 audit event。
- vetting 可在同一 made-tools 行用 **Revoke** 撤销（fail-safe）；`main.py` hash 变更会重新套上 dry-run wall；wire/MCP clients 无法授予 vetting。
- Python user tools 通过 `call_tool` / `call_tool_raw` 组合 visible core `unreal.*` tools。

完整原文: [[Task Atlas and Self Extension]]。
