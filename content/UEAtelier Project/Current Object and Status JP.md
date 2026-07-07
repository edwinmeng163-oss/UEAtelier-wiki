---
title: "Current Object and Status JP"
language: "jp"
source_note: "Current Object and Status"
source_repo: "https://github.com/edwinmeng163-oss/UEAtelier"
source_branch: "main"
source_head: "421440e"
source_describe: "v0.34.0-1-g421440e"
generated: "2026-07-04"
---
# Current Object and Status JP

## 現在の対象

UEAtelier は Unreal Editor 内で動く MCP self-extension workbench です。主成果物は `Plugins/UnrealMcp` editor plugin で、`UEvolve.uproject` はローカル開発ホストです。

## 重要な版の切り分け

| Line | Engine | MCP 構造 | Status |
| --- | --- | --- | --- |
| `v0.34.0` / `main` | UE 5.6 + UE 5.7 | UEAtelier 独自の `:8765/mcp` | 最新の supported public release |
| `v0.33.0-preview` | UE 5.8 validation | `:8765/mcp` + opt-in official `:8000/mcp` (`ToolsetRegistry + ModelContextProtocol`) | GitHub pre-release / experimental |

`v0.33.0-preview` の MCP 構造を current mainline と混同しないでください。詳細は [[v0.33 Official MCP Preview JP]]。

## 検証状態

- UE 5.6 / UE 5.7 dual-engine builds pass。
- ToolRegistry は 190 entries、visible tools/list は 178。
- v0.34.0 は vetted-toolset standing authority と Codex bridge network fix を含む。
- Automation suites pass: VetMadeTool 11/11、VettedToolset 5/5、CallTool 9/9、TaskAtlas 38/38。
- full-host automation は既知の baseline failures 2 件（`RunRecoversStale`、`PieSmoke.MapValidation`）へ収束。

[[Current Object and Status]] に完全な原文があります。
