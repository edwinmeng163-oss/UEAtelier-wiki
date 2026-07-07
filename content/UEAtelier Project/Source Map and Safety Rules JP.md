---
language: "jp"
source_note: "Source Map and Safety Rules"
source_repo: "https://github.com/edwinmeng163-oss/UEAtelier"
source_branch: "main"
source_head: "421440e"
source_describe: "v0.34.0-1-g421440e"
generated: "2026-07-04"
---
# Source Map and Safety Rules JP

## 重要ルール

- 編集前に `git status --short`。
- 既存の未コミット変更を尊重。
- `rg` / `rg --files` を優先。
- tool changes は ToolRegistry、tests、docs を同じ patch で更新。
- `Saved/`、KnowledgeIndex、fetched doc caches、API keys、local launchers、unreviewed scaffolds は commit しない。
- C++ tool logic を `UnrealMcpModule.cpp` に追加しない。
- UE version conditional は `UnrealMcpEngineCompat.h` に集約。
- UEAtelier は同一ソースツリーで UE 5.6 と 5.7 をサポート。clone 後に `Tools/install_git_hooks.sh`(Windows は `Tools/install_git_hooks.ps1`)を一度実行。
- `EAiProviderKind` の enum 値は append-only(番号の振り直し禁止)。
- ソース変更は dry run・バックアップ・manifest・build・test を必須とし、rollback 可能に保つ。
- 高リスク作業は先に `unreal.preview_change_plan` か文書化した計画を用意。
- RAG/tool 推薦の変更後は `unreal.knowledge_eval_run`、ToolRegistry 変更後は `python3 Tools/validate_tool_registry.py` を実行。
- 生成時点(main @ 421440e)でレジストリ検証は `issueCount: 0`、ツールエントリ 190 個(tools/list に見えるのは 178)。

完全な原文: [[Source Map and Safety Rules]]。
