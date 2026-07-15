---
title: "Current Object and Status CN"
language: "cn"
source_note: "Current Object and Status"
source_repo: "https://github.com/edwinmeng163-oss/UEAtelier"
source_branch: "main"
source_head: "6e7b775"
source_describe: "v0.35.0-1-g6e7b775"
generated: "2026-07-14"
---
# Current Object and Status CN

## 当前对象

UEAtelier 是运行在 Unreal Editor 内的 MCP self-extension workbench。主交付物是 `Plugins/UnrealMcp` editor plugin，`UEvolve.uproject` 是本地开发 host。

## 重要版本区分

| Line | Engine | MCP 结构 | Status |
| --- | --- | --- | --- |
| `v0.35.0` / `main` | UE 5.7 + UE 5.8（UE 5.6 为 maintenance compile canary） | UEAtelier 自有 `:8765/mcp` | 最新 supported public release |
| `v0.33.0-preview` | UE 5.8 validation | `:8765/mcp` + opt-in official `:8000/mcp` (`ToolsetRegistry + ModelContextProtocol`) | GitHub pre-release / experimental |

不要把 `v0.33.0-preview` 的 MCP 结构当作当前 mainline。详情见 [[v0.33 Official MCP Preview CN]]。

## v0.35 计划中的过渡

该过渡的 Batch 1 已于 2026-07-14 作为 `v0.35.0` 发布：UE 5.7 与 UE 5.8 成为 primary source targets（root host 迁到 5.7，`Examples/UEvolveExample57` 复用为 5.8 validation host），UE 5.6 保留为 maintenance compile canary，RAG 知识层完成可靠性重构——可恢复的索引替换、机器可读索引状态、确定性 ASCII/CJK 分词、引擎版本感知检索、rank-aware eval gate。dual-variant 结构与可选的 Epic official-MCP 集成按 2026-07-03 director 决策留给后续 batch。详见 [[v0.35 Development Plan CN]]。

## 验证状态

- UE 5.7 / UE 5.8 dual-engine builds pass（从清空 intermediates 重建）。
- ToolRegistry 有 190 entries，visible tools/list 为 178。
- v0.35.0（v0.35 Batch 1）将 UE 5.7/5.8 设为 primary targets 并完成 knowledge-index 可靠性重构；对 UE 5.7/5.8 host 是从 v0.34.0 的 drop-in upgrade。
- 每引擎 Automation suites 通过：RAG 17/17、Gate D 1/1、EngineCompat 2/2、version migration 1/1、VetMadeTool 11/11、VettedToolset 5/5、CallTool 9/9、TaskAtlas 38/38。
- full-host automation 每引擎 208 passed，收敛到两个已知 baseline failures：`RunRecoversStale` 与 `PieSmoke.MapValidation`。
- Windows UE 5.7/5.8 UBT 验证在发布后以 GitHub issue #8 跟踪（CI 打包不算引擎证据）。

完整原文在 [[Current Object and Status]]。
