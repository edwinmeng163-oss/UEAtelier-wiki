---
title: "UEAtelier Project Knowledge Hub"
source_repo: "https://github.com/edwinmeng163-oss/UEAtelier"
source_branch: "main"
source_head: "421440e"
source_describe: "v0.34.0-1-g421440e"
generated: "2026-07-04"
---

# UEAtelier Project Knowledge Hub

This vault section is generated from the UEAtelier source tree and git history. It is meant to be a navigable Obsidian map of the project rather than a replacement for the repository source of truth.

## Languages

- EN: [[UEAtelier Project Knowledge Hub]]
- JP: [[UEAtelier Project Knowledge Hub JP]]
- CN: [[UEAtelier Project Knowledge Hub CN]]
- Glossary: [[Trilingual Glossary]]

## Start Here

- [[Current Object and Status]] - what UEAtelier is right now, what ships, and what is verified.
- [[Development Path]] - release and development arc reconstructed from git tags, release docs, and first-parent history.
- [[GitHub Release History]] - all GitHub releases, assets, digests, bodies, plus tag-only milestones.
- [[v0.33 Official MCP Preview]] - UE 5.8 official-MCP validation structure, separate from the public mainline.
- [[Git First-Parent History]] - the full first-parent commit trail captured from git.
- [[MCP Structure]] - endpoint, JSON-RPC wire, tool dispatch, registry, UI surfaces, and Codex bridge.
- [[Tool Library]] - all 190 registered tools grouped by category with risk and guard metadata.
- [[Tool Schemas]] - per-tool top-level input-schema fields and required arguments.
- [[Knowledge RAG Elements]] - local RAG sources, KnowledgeCard schema, index strategy, search/recommend tools, evals, and privacy rules.
- [[Task Atlas and Self Extension]] - ActivityLog to tasks, Make Tool Set, vetted real writes, Python user tools, and manual core extension pipeline.
- [[Source Map and Safety Rules]] - repository map, documentation freshness, tool-count discipline, multi-engine discipline, and safe-edit rules.

## Snapshot

| Field | Value |
| --- | --- |
| Product | UEAtelier, Unreal Editor MCP self-extension workbench |
| Main deliverable | `Plugins/UnrealMcp` |
| Plugin version | `0.34.0` |
| Plugin friendly name | `UEAtelier` |
| Engine association | `5.6` for `UEvolve.uproject`; source supports UE 5.6 and UE 5.7 |
| Endpoint | `http://127.0.0.1:8765/mcp` |
| Chat UI | `Window > UEAtelier Chat` |
| Workbench UI | `Window > UEAtelier Workbench` |
| Registry tools | 190 total, 178 visible, 12 legacy hidden |
| Git branch/head | `main` / `421440e` |
| Git describe | `v0.34.0-1-g421440e` |
| GitHub releases | 38 releases checked; latest public `v0.34.0`; `v0.33.0-preview` is experimental pre-release |
| First-parent commits | 295 |
| Latest commit | `2026-07-03 421440e docs: fill v0.34.0 Win zip SHA-256 into release notes (all languages)` |
| Worktree status when generated | `clean` |

## Source Files Used

- `AGENTS.md`
- `README.md`
- `Plugins/UnrealMcp/README.md`
- `Docs/Architecture.md`
- `Docs/SecurityModel.md`
- `Docs/KnowledgeRag.md`
- `Docs/KnowledgeRagSources.md`
- `Docs/TaskAtlas.md`
- `Docs/SelfExtensionPipeline.md`
- `Docs/CallTool.md`
- `Docs/Release-2026-07.md`
- `Tools/UnrealMcpToolRegistry/tools.json`
- `Schemas/UnrealMcpKnowledgeCard.schema.json`
- `Tools/UnrealMcpKnowledge/Evals/core_rag_eval.json`
- `Tools/UnrealMcpCodexBridge/README.md`
- git first-parent history and tags
