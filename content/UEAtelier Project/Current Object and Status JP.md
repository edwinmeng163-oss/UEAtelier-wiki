---
title: "Current Object and Status JP"
language: "jp"
source_note: "Current Object and Status"
source_repo: "https://github.com/edwinmeng163-oss/UEAtelier"
source_branch: "main"
source_head: "6e7b775"
source_describe: "v0.35.0-1-g6e7b775"
generated: "2026-07-14"
---
# Current Object and Status JP

## 現在の対象

UEAtelier は Unreal Editor 内で動く MCP self-extension workbench です。主成果物は `Plugins/UnrealMcp` editor plugin で、`UEvolve.uproject` はローカル開発ホストです。

## 重要な版の切り分け

| Line | Engine | MCP 構造 | Status |
| --- | --- | --- | --- |
| `v0.35.0` / `main` | UE 5.7 + UE 5.8（UE 5.6 は maintenance compile canary） | UEAtelier 独自の `:8765/mcp` | 最新の supported public release |
| `v0.33.0-preview` | UE 5.8 validation | `:8765/mcp` + opt-in official `:8000/mcp` (`ToolsetRegistry + ModelContextProtocol`) | GitHub pre-release / experimental |

`v0.33.0-preview` の MCP 構造を current mainline と混同しないでください。詳細は [[v0.33 Official MCP Preview JP]]。

## v0.35 で予定する移行

この移行の Batch 1 は 2026-07-14 に `v0.35.0` として公開されました。UE 5.7 と UE 5.8 が primary source targets になり（root host は 5.7 へ、`Examples/UEvolveExample57` は 5.8 validation host として再利用）、UE 5.6 は maintenance compile canary として残ります。RAG 知識層の reliability 改修も完了 — 復旧可能なインデックス置換、機械可読なインデックス状態、決定的な ASCII/CJK トークン化、engine-version-aware retrieval、rank-aware eval gate。dual-variant 構造と任意の Epic official-MCP 統合は 2026-07-03 の director 決定どおり後続 batch に残ります。詳細は [[v0.35 Development Plan JP]]。

## 検証状態

- UE 5.7 / UE 5.8 dual-engine builds pass（intermediates を消去して再ビルド）。
- ToolRegistry は 190 entries、visible tools/list は 178。
- v0.35.0（v0.35 Batch 1）は UE 5.7/5.8 を primary targets とし、knowledge-index の reliability を全面改修。UE 5.7/5.8 host には v0.34.0 からの drop-in upgrade。
- エンジンごとの Automation suites pass: RAG 17/17、Gate D 1/1、EngineCompat 2/2、version migration 1/1、VetMadeTool 11/11、VettedToolset 5/5、CallTool 9/9、TaskAtlas 38/38。
- full-host automation はエンジンごとに 208 passed で、既知の baseline failures 2 件（`RunRecoversStale`、`PieSmoke.MapValidation`）へ収束。
- Windows UE 5.7/5.8 の UBT 検証はリリース後に GitHub issue #8 で追跡（CI パッケージングはエンジン証拠にならない）。

[[Current Object and Status]] に完全な原文があります。
