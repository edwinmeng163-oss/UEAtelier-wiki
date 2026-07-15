---
title: "Trilingual Glossary"
source_repo: "https://github.com/edwinmeng163-oss/UEAtelier"
source_branch: "main"
source_head: "6e7b775"
source_describe: "v0.35.0-1-g6e7b775"
generated: "2026-07-14"
---
# Trilingual Glossary

| EN | JP | CN | Note |
| --- | --- | --- | --- |
| UEAtelier | UEAtelier | UEAtelier | Product/plugin brand name. |
| Unreal MCP | Unreal MCP | Unreal MCP | Local Model Context Protocol integration inside Unreal Editor. The plugin folder and editor module are named `UnrealMcp` (`Plugins/UnrealMcp`, single Editor module); the plugin's FriendlyName / product brand is "UEAtelier". |
| MCP endpoint | MCP エンドポイント | MCP 端点 | Default UEAtelier MCP endpoint of the supported public line: `http://127.0.0.1:8765/mcp` (localhost-only JSON-RPC). It remains the supported surface even in the v0.33 preview, where UE 5.8's official server is a separate opt-in `:8000`. |
| official MCP preview | 公式 MCP プレビュー | 官方 MCP 预览 | `v0.33.0-preview` — EXPERIMENTAL UE 5.8 official-MCP validation build from branch `experiment/v0.33-ue58-validation`; published on GitHub as a Pre-release; never merges to main as-is. The supported public line is now v0.35.0 (UE 5.7/5.8; UE 5.6 = maintenance compile canary). |
| ToolRegistry | ToolRegistry | ToolRegistry | Explicit reviewed registry for tool metadata and policy: canonical `Tools/UnrealMcpToolRegistry/tools.json` (190 entries @ v0.35.0) with byte-equivalent mirror `Plugins/UnrealMcp/Resources/ToolRegistry/tools.json`; checked by `python3 Tools/validate_tool_registry.py`. |
| ToolsetRegistry | ToolsetRegistry | ToolsetRegistry | UE 5.8 official first-party toolset registry used by v0.33 preview. |
| ModelContextProtocol | ModelContextProtocol | ModelContextProtocol | UE 5.8 official MCP module/server. |
| Task Atlas | Task Atlas | Task Atlas | Local workflow extraction/promotion system based on ActivityLog. |
| Make Tool Set | Make Tool Set | Make Tool Set | Task Atlas row action that generates a composite Python user tool named `user.atlas_*` under `Tools/UnrealMcpPyTools/<atlas_*>/`; runs dry-run-walled via the call_tool policy until vetted in-editor (see "vetted toolset"). |
| vetted toolset | vetted toolset | 已审核工具集 | In-editor approved generated composite that may perform real writes under audit. |
| dry run | dry run | dry run / 试运行 | Preview mode that avoids real mutation. |
| preflight | 事前確認 | 前置检查 | Readiness/risk evidence before a write tool runs. |
| postcheck | 事後確認 | 后置校验 | Evidence that the requested mutation actually happened. |
| RAG | RAG | RAG | Local retrieval layer for tools, docs, tests, and promoted workflows. |
| KnowledgeCard | KnowledgeCard | KnowledgeCard | Normalized local RAG record produced by `unreal.knowledge_index_refresh`; versioned schema at `Schemas/UnrealMcpKnowledgeCard.schema.json` (index files are generated/local, never committed). |
| ActivityLog | ActivityLog | ActivityLog | Local JSONL evidence stream under `Saved/UnrealMcp/ActivityLog`. |
| ProjectMemory | ProjectMemory | ProjectMemory | Local long-memory JSON at `Saved/UnrealMcp/ProjectMemory.json` (local runtime state, never committed); managed via the 5 memory-category tools `unreal.project_memory_read` / `write` / `edit` / `delete` / `view`. |
| call_tool | call_tool | call_tool | Python user-tool bridge into visible core `unreal.*` tools. |
| legacy hidden | legacy hidden | legacy hidden / 旧兼容隐藏 | Registry `exposure: legacy_hidden` for compatibility tools hidden from AI-facing `tools/list` — 12 of 190 entries @ v0.35.0 (e.g. `unreal.spawn_actor`, `unreal.mcp_apply_scaffold`, 5 legacy gameplay scaffolds), so `tools/list` exposes 178. |
| public mainline | 公開 mainline | 公开主线 | Supported `main` release line, currently v0.35.0 for UE 5.7/5.8 (UE 5.6 = maintenance compile canary). |
| pre-release | pre-release | 预发布 | GitHub release classification used for experimental previews. |
