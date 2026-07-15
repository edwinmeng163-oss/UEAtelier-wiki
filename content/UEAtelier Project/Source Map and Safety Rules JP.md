---
title: "Source Map and Safety Rules JP"
language: "jp"
source_note: "Source Map and Safety Rules"
source_repo: "https://github.com/edwinmeng163-oss/UEAtelier"
source_branch: "main"
source_head: "6e7b775"
source_describe: "v0.35.0-1-g6e7b775"
generated: "2026-07-14"
---
# Source Map and Safety Rules JP

## 重要ルール

- 編集前に `git status --short`。
- 既存の未コミット変更を尊重。
- `rg` / `rg --files` を優先。
- tool changes は ToolRegistry、tests、docs を同じ patch で更新。
- `Saved/`、KnowledgeIndex、fetched doc caches、API keys、local launchers、unreviewed scaffolds は commit しない。
- C++ tool logic を `UnrealMcpModule.cpp` に追加しない。
- UE version conditional は `UnrealMcpEngineCompat.h` に集約(v0.35 で `>=5.8` の `FJsonObject::Values` 分岐を追加)。
- v0.35 のソースラインは UE 5.7 と 5.8 をプライマリターゲットとし、UE 5.6 は同一ソースツリーの maintenance コンパイル canary。clone 後に `Tools/install_git_hooks.sh`(Windows は `Tools/install_git_hooks.ps1`)を一度実行。
- 共有の `Examples/UEvolveExample57` host を UE 5.7 と 5.8 の間で切り替える前に、plugin と host の両方の `Binaries/` と `Intermediate/` を削除する。プラットフォーム/ビルドサブディレクトリの部分的な掃除では不十分。
- `EAiProviderKind` の enum 値は append-only(番号の振り直し禁止)。
- ソース変更は dry run・バックアップ・manifest・build・test を必須とし、rollback 可能に保つ。
- 高リスク作業は先に `unreal.preview_change_plan` か文書化した計画を用意。
- RAG/tool 推薦の変更後は `unreal.knowledge_eval_run`、ToolRegistry 変更後は `python3 Tools/validate_tool_registry.py` を実行。
- 生成時点(main @ 6e7b775、v0.35.0 tag の 1 コミット後)でレジストリ検証は `issueCount: 0`、ツールエントリ 190 個(tools/list に見えるのは 178)、plugin mirror は byte-identical。

完全な原文: [[Source Map and Safety Rules]]。
