---
title: "Knowledge RAG Elements CN"
language: "cn"
source_note: "Knowledge RAG Elements"
source_repo: "https://github.com/edwinmeng163-oss/UEAtelier"
source_branch: "main"
source_head: "36b6e27"
source_describe: "v0.34.0-2-g36b6e27"
generated: "2026-07-10"
---
# Knowledge RAG Elements CN

UEAtelier 的 RAG layer 是 local-first。它先寻找现有 tools，并通过 tool recommendation / gap analysis / workflow recommendation / eval 避免不必要的新工具创建。

## 主要元素

- `KnowledgeCard`: local RAG record。
- `Saved/UnrealMcp/KnowledgeIndex/index.json`: generated index。
- `cards.jsonl`: UTF-8 JSONL，便于外部工具读取。
- `unreal.knowledge_index_refresh`: 重建 index。
- `unreal.knowledge_search`: 本地搜索。
- `unreal.tool_recommend`: 推荐现有 tools 和顺序。
- `unreal.tool_gap_analyze`: 判断 existing / compose / scaffold。
- `unreal.workflow_recommend`: dry-run first workflow draft。
- `unreal.knowledge_eval_run`: RAG regression eval。

## 官方 Unreal 文档 bootstrap

官方 Unreal 文档抓取由三部分组成：versioned seed manifest `Tools/UnrealMcpKnowledge/Sources/unreal_engine_official_docs_5_7.json`、fetcher `Tools/unreal_mcp_fetch_docs.py`（运行 `python3 Tools/unreal_mcp_fetch_docs.py --max-pages 20`），以及本地缓存 `Saved/UnrealMcp/KnowledgeSources/UnrealEngineOfficialDocs/5.7`。普通文档页优先使用 Epic 的结构化 `community/api/documentation/document.json` endpoint；Unreal Python API 这类静态页面则按 HTML 抓取。

## Eval Cases

Eval cases 位于 `Tools/UnrealMcpKnowledge/Evals/core_rag_eval.json`（schema `UEvolve.KnowledgeEval.v1`，共 8 个 case）。在 Chat 或 Workbench 中运行 `/tool unreal.knowledge_eval_run {"evalPath":"Tools/UnrealMcpKnowledge/Evals","includeDetails":false}`。按 AGENTS.md 规定，RAG 或 tool recommendation 行为发生变化时必须运行 `unreal.knowledge_eval_run`。

## Privacy

默认索引五类来源：versioned docs、tool registry、official-docs cache、promoted skills（`Tools/UnrealMcpSkills/**/SKILL.md`）、ActivityLog（`includeActivityLog` 默认 true，可传 false 关闭）。runtime memory（ProjectMemory）、ChatHistory、supervisor logs 在 v0.34.0 没有 indexer，保持 local-only；`runtime-memory` 与 `test-fixture` 两个 sourceKind 为 reserved-not-active。索引数据始终只写本地 `Saved/UnrealMcp/KnowledgeIndex/`。

## v0.35 审查结论

2026-07-10 审查发现，Gate D RAG 测试会在删除测试源之后对默认生产索引执行 cleanup refresh，可能把 `cards.jsonl` 与 `cardCount` 清为 0；Chat 只识别 “Knowledge index not found”，不会恢复空索引。v0.35 第一项修复是隔离测试索引、默认禁止空 rebuild 覆盖 last-known-good、原子写入，并返回 `missing | empty | stale | ready | corrupt` 机器状态。

审查还确认四个已实现参数未出现在公开 schema（`includeActivityLog`、`includeSkills`、`sourceKinds`、`groupByKind`），freshness 元数据不真实，2,000 卡全局截断可能饿死低权重 source kind，`5.7`/`5.8` token 会丢失，`ui` 还会错误命中 `build`。v0.35 将修复 schema parity，将 ActivityLog 改为显式 opt-in，增加独立 5.7/5.8 official-doc seed 与 engine metadata，保留 heading/fingerprint，做 source budget diversification，并用 rank-aware positive/negative eval 取代只判断非空的 binary eval。详见 [[v0.35 Development Plan CN]]。

完整原文: [[Knowledge RAG Elements]]。
