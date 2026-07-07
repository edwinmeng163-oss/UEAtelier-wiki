---
language: "cn"
source_note: "MCP Structure"
source_repo: "https://github.com/edwinmeng163-oss/UEAtelier"
source_branch: "main"
source_head: "421440e"
source_describe: "v0.34.0-1-g421440e"
generated: "2026-07-04"
---
# MCP Structure CN

此页面说明 supported public `main` / `v0.34.0` 的 MCP 结构。`v0.33.0-preview` 是 UE 5.8 official-MCP 验证版，结构不同。

## Mainline Runtime Shape

- 在 Unreal Editor 内运行 localhost JSON-RPC MCP endpoint。
- endpoint 是 `http://127.0.0.1:8765/mcp`。
- 处理 `initialize` / `ping` / `tools/list` / `tools/call`。
- `initialize` 协商协议版本（最新 `2025-06-18`），返回 `serverInfo` = `{name: "unreal-editor-mcp", version: "0.10.4"}`（硬编码，不随插件 VersionName 变动）、`capabilities.tools.listChanged: false`，以及以 endpoint URL 结尾的 instructions 字符串。
- `tools/call` 切到 Unreal game thread，经 ToolDispatcher 与 ToolRegistry 到达 category handler。
- Chat panel、Workbench、external MCP clients、Codex bridge 共用同一套 tool handlers。
- Chat panel 从 **Window > UEAtelier Chat** 打开，Workbench 从 **Window > UEAtelier Workbench** 打开（tab 显示名与菜单项在 `UnrealMcpEditorTabs.cpp` 注册）；Task Atlas 窗口从 Chat panel 打开。
- Codex bridge 的 approval policy 拒绝内建 file/command/permission/user-input/elicitation 请求（`applyPatchApproval`、`execCommandApproval`、`item/commandExecution/requestApproval`、`item/fileChange/requestApproval`、`item/permissions/requestApproval`、`item/tool/requestUserInput`、`item/tool/call`）；唯一例外：来自已注册 `unrealmcp` server、带 `codex_approval_kind: mcp_tool_call` 的 form-mode MCP elicitation 会被自动接受，Unreal MCP tool call 才能继续执行。

## Registry and Metadata

- registry 当前共 **190 条**：**178** 条 `exposure: visible`（经 `tools/list` 下发），**12** 条 `exposure: legacy_hidden`（legacy 弹性 schema 工具，如 `unreal.spawn_actor`、`unreal.mcp_extension_pipeline`，为兼容仍可调用，但绝不序列化上线）。计数由 `python3 Tools/validate_tool_registry.py` 强制校验，且须与插件镜像 `Plugins/UnrealMcp/Resources/ToolRegistry/tools.json` 保持同步。

## Runtime State

- 本地运行期状态在 `Saved/UnrealMcp/` 下，不入库。主要子区包括 `ActivityLog/`、`Tasks/`、`TaskAtlasDrafts/`、`CapturedToolArgs/`、`KnowledgeSources/`（含用于 To-RAG 晋升的 `KnowledgeSources/TaskAtlas/`）、`KnowledgeIndex/`、`CodeChanges/`（含 `CodeChanges/Previews/`）、`ProjectMemory.json`、`ChatHistory.json`、`SkillDrafts/`、`SupervisorLogs/`、`Packages/`、`ExtensionBackups/` 与 `LastExtensionApply.json`、`AutomationRuns/`、`BuildLogs/`、`MakeToolSetFailures/`、`TestScaffolds/`。

## Version Difference

| Line | Endpoint | Meaning |
| --- | --- | --- |
| `v0.34.0` | `:8765/mcp` | UEAtelier-owned `unreal.*` tool inventory。 |
| `v0.33.0-preview` | `:8765/mcp` + opt-in `:8000/mcp` | UE 5.8 official `ToolsetRegistry + ModelContextProtocol` dual-track validation。 |

完整原文: [[MCP Structure]]。
