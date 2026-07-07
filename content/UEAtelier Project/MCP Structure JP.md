---
title: "MCP Structure JP"
language: "jp"
source_note: "MCP Structure"
source_repo: "https://github.com/edwinmeng163-oss/UEAtelier"
source_branch: "main"
source_head: "421440e"
source_describe: "v0.34.0-1-g421440e"
generated: "2026-07-04"
---
# MCP Structure JP

このページは supported public `main` / `v0.34.0` の MCP 構造を説明します。`v0.33.0-preview` は UE 5.8 official-MCP 検証版で別構造です。

## Mainline Runtime Shape

- Unreal Editor 内で localhost JSON-RPC MCP endpoint を動かす。
- endpoint は `http://127.0.0.1:8765/mcp`。
- `initialize` / `ping` / `tools/list` / `tools/call` を処理。
- `initialize` はプロトコルバージョンを交渉し（最新 `2025-06-18`）、`serverInfo` = `{name: "unreal-editor-mcp", version: "0.10.4"}`（ハードコードで、プラグインの VersionName とは連動しない）、`capabilities.tools.listChanged: false`、および endpoint URL で終わる instructions 文字列を返す。
- `tools/call` は Unreal game thread へ移され、ToolDispatcher と ToolRegistry 経由で category handler に到達。
- Chat panel、Workbench、external MCP clients、Codex bridge は同じ tool handlers を共有。
- Chat panel は **Window > UEAtelier Chat**、Workbench は **Window > UEAtelier Workbench** から開く（タブ表示名とメニュー項目は `UnrealMcpEditorTabs.cpp` で登録）。Task Atlas ウィンドウは Chat panel から開く。
- Codex bridge の approval policy はビルトインの file/command/permission/user-input/elicitation 要求（`applyPatchApproval`、`execCommandApproval`、`item/commandExecution/requestApproval`、`item/fileChange/requestApproval`、`item/permissions/requestApproval`、`item/tool/requestUserInput`、`item/tool/call`）を拒否する。唯一の例外として、登録済み `unrealmcp` server からの `codex_approval_kind: mcp_tool_call` 付き form-mode MCP elicitation だけは自動承認され、Unreal MCP tool call が実行できる。

## Registry and Metadata

- registry は現在 **190 エントリ**：`exposure: visible` が **178**（`tools/list` で配信）、`exposure: legacy_hidden` が **12**（`unreal.spawn_actor` や `unreal.mcp_extension_pipeline` などの legacy 柔軟スキーマツール。互換のため呼び出しは可能だが、wire には決してシリアライズされない）。件数は `python3 Tools/validate_tool_registry.py` で強制され、プラグインミラー `Plugins/UnrealMcp/Resources/ToolRegistry/tools.json` と同期を保つ必要がある。

## Runtime State

- ローカル実行時状態は `Saved/UnrealMcp/` 配下にあり、コミットされない。主なサブ領域は `ActivityLog/`、`Tasks/`、`TaskAtlasDrafts/`、`CapturedToolArgs/`、`KnowledgeSources/`（To-RAG 昇格用の `KnowledgeSources/TaskAtlas/` を含む）、`KnowledgeIndex/`、`CodeChanges/`（`CodeChanges/Previews/` を含む）、`ProjectMemory.json`、`ChatHistory.json`、`SkillDrafts/`、`SupervisorLogs/`、`Packages/`、`ExtensionBackups/` と `LastExtensionApply.json`、`AutomationRuns/`、`BuildLogs/`、`MakeToolSetFailures/`、`TestScaffolds/`。

## Version Difference

| Line | Endpoint | Meaning |
| --- | --- | --- |
| `v0.34.0` | `:8765/mcp` | UEAtelier-owned `unreal.*` tool inventory。 |
| `v0.33.0-preview` | `:8765/mcp` + opt-in `:8000/mcp` | UE 5.8 official `ToolsetRegistry + ModelContextProtocol` dual-track validation。 |

完全な原文: [[MCP Structure]]。
