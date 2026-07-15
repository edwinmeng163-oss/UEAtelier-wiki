---
title: "Knowledge RAG Elements CN"
language: "cn"
source_note: "Knowledge RAG Elements"
source_repo: "https://github.com/edwinmeng163-oss/UEAtelier"
source_branch: "main"
source_head: "6e7b775"
source_describe: "v0.35.0-1-g6e7b775"
generated: "2026-07-14"
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

官方 Unreal 文档抓取由三部分组成：versioned seed manifests `Tools/UnrealMcpKnowledge/Sources/unreal_engine_official_docs_5_7.json` 与 `unreal_engine_official_docs_5_8.json`（curated UE 5.7 / 5.8 列表，各 17 个 source，均声明 `engineVersion`）、fetcher `Tools/unreal_mcp_fetch_docs.py`（运行 `python3 Tools/unreal_mcp_fetch_docs.py --max-pages 20`），以及按版本分离的本地缓存 `Saved/UnrealMcp/KnowledgeSources/UnrealEngineOfficialDocs/5.7` 与 `5.8`。自 v0.35.0 起，CLI 版本覆盖会替换 URL query 里的既有版本并选择匹配缓存（5.8 抓取不会污染 5.7 数据），提取器保留 H1-H6 为 Markdown 标题。普通文档页优先使用 Epic 的结构化 `community/api/documentation/document.json` endpoint；Unreal Python API 这类静态页面则按 HTML 抓取。

## Eval Cases

Eval cases 位于 `Tools/UnrealMcpKnowledge/Evals/core_rag_eval.json`（schema `UEvolve.KnowledgeEval.v2`，共 8 个 case）。Eval schema v2 支持 rank-aware assertion（`expectSourcePathsAtK`、`expectAnySourcePathContains`、`forbidTopSourcePathContains`、`expectToolAtRank`），并汇总 rank-assertion 计数与通过率。在 Chat 或 Workbench 中运行 `/tool unreal.knowledge_eval_run {"evalPath":"Tools/UnrealMcpKnowledge/Evals","includeDetails":false}`。按 AGENTS.md 规定，RAG 或 tool recommendation 行为发生变化时必须运行 `unreal.knowledge_eval_run`。

## Privacy

五类来源有 active indexer：versioned docs、tool registry、official-docs cache、promoted skills（`Tools/UnrealMcpSkills/**/SKILL.md`）、ActivityLog。自 v0.35.0 起 `includeActivityLog` 默认 false（显式 opt-in）；新增的 `includePromotedSources`（promoted 本地 markdown，独立于 official-doc 缓存）与其余 include 开关默认 true。runtime memory（ProjectMemory）、ChatHistory、supervisor logs 在 v0.35.0 没有 indexer，保持 local-only；`runtime-memory` 与 `test-fixture` 两个 sourceKind 为 reserved-not-active。索引数据始终只写本地 `Saved/UnrealMcp/KnowledgeIndex/`。

## v0.35 审查结论

2026-07-10 审查发现，Gate D RAG 测试会在删除测试源之后对默认生产索引执行 cleanup refresh，可能把 `cards.jsonl` 与 `cardCount` 清为 0；Chat 只识别 “Knowledge index not found”，不会恢复空索引。v0.35.0（Batch 1，2026-07-14 发布）已修复：测试索引隔离到独立 `indexRoot`，空 rebuild 默认 fail-closed、不覆盖 last-known-good（`allowEmptyIndex` 仅限 `Saved/UnrealMcp/Tests` 下的显式 `indexRoot`），索引对文件经可恢复 `.bak` 对 staged/verified 替换（中断后下次加载自动恢复），并返回 `missing | empty | stale | ready | corrupt` 机器状态；Chat 按该状态刷新，每个面板会话至多自动刷新一次。

审查还确认四个已实现参数未出现在公开 schema（`includeActivityLog`、`includeSkills`、`sourceKinds`、`groupByKind`），freshness 元数据不真实，2,000 卡全局截断可能饿死低权重 source kind，`5.7`/`5.8` token 会丢失，`ui` 还会错误命中 `build`。v0.35.0 已交付这些修复：schema parity（另新增 `includePromotedSources` 与 `allowEmptyIndex`）、ActivityLog 显式 opt-in、独立 5.7/5.8 official-doc seed 与 engine metadata（按版本分离缓存）、heading/fingerprint 保留、卡片上限前的 source-kind/引擎多样性保留、确定性边界分词，以及 rank-aware positive/negative eval（schema v2）。`unreal.knowledge_eval_run` 因 `refreshIndex:true` 可替换隔离 eval 索引而重新归类为低风险写工具（`requiresWrite=true`），`riskMax=read_only` 客户端不再可见。详见 [[v0.35 Development Plan CN]]。

完整原文: [[Knowledge RAG Elements]]。
