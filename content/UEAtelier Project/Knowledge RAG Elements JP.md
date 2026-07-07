---
title: "Knowledge RAG Elements JP"
language: "jp"
source_note: "Knowledge RAG Elements"
source_repo: "https://github.com/edwinmeng163-oss/UEAtelier"
source_branch: "main"
source_head: "421440e"
source_describe: "v0.34.0-1-g421440e"
generated: "2026-07-04"
---
# Knowledge RAG Elements JP

UEAtelier の RAG layer は local-first です。既存 tools を先に探し、tool recommendation / gap analysis / workflow recommendation / eval を通じて、不要な新規 tool 作成を避けます。

## 主な要素

- `KnowledgeCard`: local RAG record。
- `Saved/UnrealMcp/KnowledgeIndex/index.json`: generated index。
- `cards.jsonl`: external tools でも読める UTF-8 JSONL。
- `unreal.knowledge_index_refresh`: index rebuild。
- `unreal.knowledge_search`: local search。
- `unreal.tool_recommend`: 既存 tools と順序を推薦。
- `unreal.tool_gap_analyze`: existing / compose / scaffold を判定。
- `unreal.workflow_recommend`: dry-run first workflow draft。
- `unreal.knowledge_eval_run`: RAG regression eval。

## 公式 Unreal docs bootstrap

公式 Unreal docs の取得は 3 つの部分から成ります：versioned seed manifest `Tools/UnrealMcpKnowledge/Sources/unreal_engine_official_docs_5_7.json`、fetcher `Tools/unreal_mcp_fetch_docs.py`（実行コマンド：`python3 Tools/unreal_mcp_fetch_docs.py --max-pages 20`）、そして local cache `Saved/UnrealMcp/KnowledgeSources/UnrealEngineOfficialDocs/5.7`。通常のドキュメントページは Epic の構造化 `community/api/documentation/document.json` endpoint を優先し、Unreal Python API のような静的ページは HTML として取得します。

## Eval Cases

Eval cases は `Tools/UnrealMcpKnowledge/Evals/core_rag_eval.json`（schema `UEvolve.KnowledgeEval.v1`、全 8 case）にあります。Chat または Workbench から `/tool unreal.knowledge_eval_run {"evalPath":"Tools/UnrealMcpKnowledge/Evals","includeDetails":false}` で実行します。AGENTS.md の規定により、RAG や tool recommendation の挙動を変更した際は `unreal.knowledge_eval_run` の実行が必須です。

## Privacy

デフォルトでは 5 種類のソースが索引されます：versioned docs、tool registry、official-docs cache、promoted skills（`Tools/UnrealMcpSkills/**/SKILL.md`）、ActivityLog（`includeActivityLog` はデフォルト true、false で無効化可能）。runtime memory（ProjectMemory）、ChatHistory、supervisor logs は v0.34.0 時点で indexer が存在せず、local-only のままです。`runtime-memory` と `test-fixture` の sourceKind は reserved-not-active です。索引データは常にローカルの `Saved/UnrealMcp/KnowledgeIndex/` のみに書き込まれます。

完全な原文: [[Knowledge RAG Elements]]。
