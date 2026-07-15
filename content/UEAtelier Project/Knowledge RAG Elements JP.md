---
title: "Knowledge RAG Elements JP"
language: "jp"
source_note: "Knowledge RAG Elements"
source_repo: "https://github.com/edwinmeng163-oss/UEAtelier"
source_branch: "main"
source_head: "6e7b775"
source_describe: "v0.35.0-1-g6e7b775"
generated: "2026-07-14"
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

公式 Unreal docs の取得は 3 つの部分から成ります：versioned seed manifests `Tools/UnrealMcpKnowledge/Sources/unreal_engine_official_docs_5_7.json` と `unreal_engine_official_docs_5_8.json`（curated UE 5.7 / 5.8 リスト、各 17 source、いずれも `engineVersion` を宣言）、fetcher `Tools/unreal_mcp_fetch_docs.py`（実行コマンド：`python3 Tools/unreal_mcp_fetch_docs.py --max-pages 20`）、そしてバージョン別の local cache `Saved/UnrealMcp/KnowledgeSources/UnrealEngineOfficialDocs/5.7` と `5.8`。v0.35.0 以降、CLI のバージョン上書きは URL query 内の既存バージョンを置換して対応キャッシュを選択し（5.8 取得が 5.7 データを汚染しません）、抽出器は H1-H6 を Markdown 見出しとして保持します。通常のドキュメントページは Epic の構造化 `community/api/documentation/document.json` endpoint を優先し、Unreal Python API のような静的ページは HTML として取得します。

## Eval Cases

Eval cases は `Tools/UnrealMcpKnowledge/Evals/core_rag_eval.json`（schema `UEvolve.KnowledgeEval.v2`、全 8 case）にあります。Eval schema v2 は rank-aware assertion（`expectSourcePathsAtK`、`expectAnySourcePathContains`、`forbidTopSourcePathContains`、`expectToolAtRank`）をサポートし、rank-assertion の件数と通過率を集計します。Chat または Workbench から `/tool unreal.knowledge_eval_run {"evalPath":"Tools/UnrealMcpKnowledge/Evals","includeDetails":false}` で実行します。AGENTS.md の規定により、RAG や tool recommendation の挙動を変更した際は `unreal.knowledge_eval_run` の実行が必須です。

## Privacy

5 種類のソースに active indexer があります：versioned docs、tool registry、official-docs cache、promoted skills（`Tools/UnrealMcpSkills/**/SKILL.md`）、ActivityLog。v0.35.0 以降 `includeActivityLog` はデフォルト false（explicit opt-in）です。新設の `includePromotedSources`（promoted ローカル markdown、official-doc キャッシュから独立）とその他の include フラグはデフォルト true です。runtime memory（ProjectMemory）、ChatHistory、supervisor logs は v0.35.0 時点で indexer が存在せず、local-only のままです。`runtime-memory` と `test-fixture` の sourceKind は reserved-not-active です。索引データは常にローカルの `Saved/UnrealMcp/KnowledgeIndex/` のみに書き込まれます。

## v0.35 Audit 結果

2026-07-10 の audit で、Gate D RAG test が test source 削除後の cleanup 時に既定の production index を refresh し、`cards.jsonl` と `cardCount` を 0 にできることが判明しました。Chat は “Knowledge index not found” だけを認識し、empty index を回復しませんでした。v0.35.0（Batch 1、2026-07-14 リリース）でこの修正が出荷されました：test index は独立した `indexRoot` に隔離、empty rebuild は既定で fail-closed となり last-known-good を上書きしない（`allowEmptyIndex` は `Saved/UnrealMcp/Tests` 配下の明示的 `indexRoot` に限定）、index のペアファイルは復旧可能な `.bak` ペアを介して staged/verified 置換（中断後は次回ロード時に自動復旧）、`missing | empty | stale | ready | corrupt` の machine state を返却。Chat はこの状態フィールドで refresh し、パネルセッション毎に自動 refresh は最大 1 回です。

同じ audit で、実装済みの 4 引数（`includeActivityLog`、`includeSkills`、`sourceKinds`、`groupByKind`）が公開 schema にないこと、freshness metadata が source 時刻を示さないこと、2,000-card global truncation が低 weight source kind を排除し得ること、`5.7`/`5.8` token が消え、`ui` が `build` に誤ヒットすることも確認しました。v0.35.0 はこれらの修復を出荷しました：schema parity（さらに `includePromotedSources` と `allowEmptyIndex` を追加）、ActivityLog の explicit opt-in 化、5.7/5.8 の独立 official-doc seed と engine metadata（バージョン別キャッシュ）、heading/fingerprint の保持、card cap 前の source-kind/エンジン多様性予約、決定的な境界認識トークン化、rank-aware positive/negative eval（schema v2）。`unreal.knowledge_eval_run` は `refreshIndex:true` が隔離 eval index を置換できるため低リスク書き込みツール（`requiresWrite=true`）に再分類され、`riskMax=read_only` クライアントからは見えなくなりました。詳細は [[v0.35 Development Plan JP]]。

完全な原文: [[Knowledge RAG Elements]]。
