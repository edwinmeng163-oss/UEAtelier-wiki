---
language: "cn"
source_note: "Source Map and Safety Rules"
source_repo: "https://github.com/edwinmeng163-oss/UEAtelier"
source_branch: "main"
source_head: "421440e"
source_describe: "v0.34.0-1-g421440e"
generated: "2026-07-04"
---
# Source Map and Safety Rules CN

## 重要规则

- 编辑前运行 `git status --short`。
- 尊重已有未提交改动。
- 优先使用 `rg` / `rg --files`。
- tool changes 必须同 patch 更新 ToolRegistry、tests、docs。
- 不提交 `Saved/`、KnowledgeIndex、fetched doc caches、API keys、local launchers、unreviewed scaffolds。
- 不把 C++ tool logic 加到 `UnrealMcpModule.cpp`。
- UE version conditional 统一放在 `UnrealMcpEngineCompat.h`。
- UEAtelier 同一源码树支持 UE 5.6 与 5.7;clone 后运行一次 `Tools/install_git_hooks.sh`(Windows 用 `Tools/install_git_hooks.ps1`)。
- `EAiProviderKind` 枚举值 append-only,禁止重新编号。
- 源码变更必须 dry run、备份、manifest、build、test,并保留 rollback。
- 高风险任务先用 `unreal.preview_change_plan` 或书面计划。
- RAG/tool 推荐变更后运行 `unreal.knowledge_eval_run`;ToolRegistry 变更后运行 `python3 Tools/validate_tool_registry.py`。
- 生成时(main @ 421440e)注册表校验 `issueCount: 0`,共 190 个工具条目(178 个对 tools/list 可见)。

完整原文: [[Source Map and Safety Rules]]。
