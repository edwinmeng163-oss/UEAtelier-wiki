---
title: "Knowledge RAG Elements JP"
language: "jp"
source_note: "Knowledge RAG Elements"
source_repo: "https://github.com/edwinmeng163-oss/UEAtelier"
source_branch: "main"
source_head: "36b6e27"
source_describe: "v0.34.0-2-g36b6e27"
generated: "2026-07-10"
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

## v0.35 Audit 結果

2026-07-10 の audit で、Gate D RAG test が test source 削除後の cleanup 時に既定の production index を refresh し、`cards.jsonl` と `cardCount` を 0 にできることが判明しました。Chat は “Knowledge index not found” だけを認識し、empty index を回復しません。v0.35 の最初の修正は test index の隔離、empty rebuild による last-known-good 上書きの既定拒否、atomic write、`missing | empty | stale | ready | corrupt` machine state の返却です。

同じ audit で、実装済みの 4 引数（`includeActivityLog`、`includeSkills`、`sourceKinds`、`groupByKind`）が公開 schema にないこと、freshness metadata が source 時刻を示さないこと、2,000-card global truncation が低 weight source kind を排除し得ること、`5.7`/`5.8` token が消え、`ui` が `build` に誤ヒットすることも確認しました。v0.35 では schema parity を修復し、ActivityLog を explicit opt-in に変更し、5.7/5.8 の独立 official-doc seed と engine metadata、heading/fingerprint の保持、source budget diversification、rank-aware positive/negative eval を導入します。詳細は [[v0.35 Development Plan JP]]。

完全な原文: [[Knowledge RAG Elements]]。
