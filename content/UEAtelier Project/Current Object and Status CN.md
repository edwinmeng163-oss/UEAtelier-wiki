---
title: "Current Object and Status CN"
language: "cn"
source_note: "Current Object and Status"
source_repo: "https://github.com/edwinmeng163-oss/UEAtelier"
source_branch: "main"
source_head: "421440e"
source_describe: "v0.34.0-1-g421440e"
generated: "2026-07-04"
---
# Current Object and Status CN

## 当前对象

UEAtelier 是运行在 Unreal Editor 内的 MCP self-extension workbench。主交付物是 `Plugins/UnrealMcp` editor plugin，`UEvolve.uproject` 是本地开发 host。

## 重要版本区分

| Line | Engine | MCP 结构 | Status |
| --- | --- | --- | --- |
| `v0.34.0` / `main` | UE 5.6 + UE 5.7 | UEAtelier 自有 `:8765/mcp` | 最新 supported public release |
| `v0.33.0-preview` | UE 5.8 validation | `:8765/mcp` + opt-in official `:8000/mcp` (`ToolsetRegistry + ModelContextProtocol`) | GitHub pre-release / experimental |

不要把 `v0.33.0-preview` 的 MCP 结构当作当前 mainline。详情见 [[v0.33 Official MCP Preview CN]]。

## 验证状态

- UE 5.6 / UE 5.7 dual-engine builds pass。
- ToolRegistry 有 190 entries，visible tools/list 为 178。
- v0.34.0 包含 vetted-toolset standing authority 和 Codex bridge network fix。
- Automation suites 通过：VetMadeTool 11/11、VettedToolset 5/5、CallTool 9/9、TaskAtlas 38/38。
- full-host automation 收敛到两个已知 baseline failures：`RunRecoversStale` 与 `PieSmoke.MapValidation`。

完整原文在 [[Current Object and Status]]。
