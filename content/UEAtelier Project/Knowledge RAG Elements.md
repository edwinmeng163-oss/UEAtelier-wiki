---
title: "Knowledge RAG Elements"
source_repo: "https://github.com/edwinmeng163-oss/UEAtelier"
source_branch: "main"
source_head: "421440e"
source_describe: "v0.34.0-1-g421440e"
generated: "2026-07-04"
---
# Knowledge RAG Elements

UEAtelier's RAG layer is local-first. It helps Chat choose existing tools before inventing new ones, recommends safe tool combinations and verification steps, detects real gaps, preserves project knowledge outside a single chat context, and keeps private runtime activity local unless explicitly promoted.

## Knowledge Sources

### Versioned Sources

- `Tools/UnrealMcpToolRegistry/tools.json`: category, handler, risk, dry-run, preflight/postcheck, owner, docs, and test coverage.
- `UnrealMcpToolRegistrar.cpp`: canonical AI-visible schemas and descriptions.
- `Tools/UnrealMcpTests/**`: valid, invalid, happy-path, and sandboxed examples.
- `Docs/**`, `README.md`, and `Plugins/UnrealMcp/README.md`: install, architecture, security, pipeline, supervisor, and troubleshooting docs.
- `Docs/DeploymentTroubleshooting.md` and `Docs/UnrealTaskRecipes.md`: practical install recovery and common editor task recipes.
- `Tools/UnrealMcpSkills/**`: reviewed reusable skills promoted by the user.

### Local Runtime Sources

- `Saved/UnrealMcp/ProjectMemory.json`: active task, decisions, and pipeline state.
- `Saved/UnrealMcp/ActivityLog/*.jsonl`: local tool/chat/workflow activity evidence.
- `Saved/UnrealMcp/Tasks/*.json`: Task Atlas workflow records rebuilt from ActivityLog.
- `Saved/UnrealMcp/KnowledgeSources/TaskAtlas/*.md`: Task Atlas workflows explicitly promoted to RAG.
- `Saved/UnrealMcp/SkillDrafts/**`: unpromoted skill drafts.
- `Saved/UnrealMcp/TestScaffolds/**`: generated tests and scaffold artifacts.
- `Saved/UnrealMcp/SupervisorLogs/**`: restart/build/test handoff evidence.

### External Reference Sources

- MCP specification.
- Unreal Engine docs and Python/C++ API references.
- OpenAI function calling and structured output docs.
- Tool-use research notes.

Fetched official Unreal docs are cached locally under `Saved/UnrealMcp/KnowledgeSources/UnrealEngineOfficialDocs/5.7` and should not be committed unless the upstream license permits redistribution. The bootstrap has three parts: the versioned seed manifest `Tools/UnrealMcpKnowledge/Sources/unreal_engine_official_docs_5_7.json`, the fetcher `Tools/unreal_mcp_fetch_docs.py` (run `python3 Tools/unreal_mcp_fetch_docs.py --max-pages 20`), and the local cache above. Normal documentation pages prefer Epic's structured `community/api/documentation/document.json` endpoint; static pages such as the Unreal Python API are fetched as HTML.

## KnowledgeCard Schema

Schema path: `Schemas/UnrealMcpKnowledgeCard.schema.json`

Required fields:

- `cardId`
- `sourceId`
- `title`
- `category`
- `sourceKind`
- `sourcePath`
- `text`
- `chunkIndex`
- `textLength`

Supported `sourceKind` values:

- `tool-registry`
- `versioned-doc`
- `official-docs`
- `skill`
- `runtime-memory`
- `activity-log`
- `test-fixture`
- `unknown`

Optional metadata includes `sectionTitle`, `sectionPath`, `tags`, `url`, `sourceWeight`, `confidence`, and `updatedAt`.

## Indexing Strategy

1. Parse versioned docs, registry entries, tests, skills, and selected local memory into normalized KnowledgeCards.
2. Store generated index under `Saved/UnrealMcp/KnowledgeIndex/index.json`.
3. Write `cards.jsonl` as UTF-8 JSONL for external inspection.
4. Split markdown by section headings before chunking.
5. Score with token matching, Chinese/English synonym expansion, title/section/category boosts, source weights, confidence weights, and exact tool-name boosts.
6. Deduplicate near-identical cards and collapse repeated adjacent sections.
7. Return compact cards with source path, excerpt, category, risk metadata, and suggested next tools.

## RAG Tools

| Tool | Purpose |
| --- | --- |
| `unreal.knowledge_index_refresh` | Rebuilds local index from versioned docs and selected runtime sources. |
| `unreal.knowledge_search` | Searches local KnowledgeCards with filters and excerpt controls. |
| `unreal.tool_recommend` | Recommends existing tools, order, dry-run/preflight needs, backup needs, and verification tools. |
| `unreal.tool_gap_analyze` | Chooses existing tools, composition, or a new MCP scaffold and returns descriptor/schema/test hints. |
| `unreal.workflow_recommend` | Produces a bounded dry-run-first `workflow_run` draft. |
| `unreal.knowledge_eval_run` | Runs local eval cases for search, tool recommendation, gap analysis, and workflow recommendation. |

## Eval Cases

Cases live in `Tools/UnrealMcpKnowledge/Evals/core_rag_eval.json` (schema `UEvolve.KnowledgeEval.v1`, 8 cases). Run from Chat or Workbench with `/tool unreal.knowledge_eval_run {"evalPath":"Tools/UnrealMcpKnowledge/Evals","includeDetails":false}`. Per AGENTS.md, `unreal.knowledge_eval_run` must be run whenever RAG or tool-recommendation behavior changes.

| Case | Type | Query/Task |
| --- | --- | --- |
| `search_blueprint_tool_cards` | search | 蓝图 Blueprint graph node pin tools |
| `search_deployment_troubleshooting_docs` | search | Windows Build.bat Live Coding NetFxSDK endpoint offline tail_log project plugin install |
| `search_first_person_recipe_docs` | search | first person character GameMode DefaultPawn PlayerStart camera movement input |
| `recommend_widget_tools` | tool_recommend | Create a Widget HUD and verify it with existing UMG tools |
| `gap_analysis_prefers_composition_for_widget_task` | tool_gap_analyze | Build a Widget HUD with existing tools and verification gates |
| `workflow_recommend_has_core_gates` | workflow_recommend | Build and verify a Widget HUD using safe MCP workflow gates |
| `search_filter_by_source_kind_skill` | search | self extension skill MCP scaffold workflow |
| `search_kind_status_reports_reserved` | search | knowledge search tool registry |

## Recommended Chat Flow

1. Build a compact RAG/tool-planning capsule before complex AI turns.
2. Run `unreal.tool_recommend`; refresh the index if missing.
3. Run `unreal.knowledge_search` for docs, tests, and failure patterns.
4. Use `unreal.preview_change_plan` to turn the goal into likely tools, risk, backup, and verification steps.
5. Use `unreal.tool_gap_analyze` to decide existing tools vs workflow vs scaffold.
6. Use `unreal.workflow_recommend` and `unreal.workflow_run` only after exact arguments and risk gates are clear.
7. If there is a true gap, follow the self-extension pipeline.
8. Write the `chat.active_task` ProjectMemory key when the task is long, paused, failed, or near tool round limits (per `Docs/KnowledgeRag.md` "Chat Integration" step 8; `Docs/KnowledgeRagSources.md` §2 plans indexing of selected keys such as `chat.active_task` as `runtime-memory`).

## Source Taxonomy and Event Kinds

`Docs/KnowledgeRagSources.md` defines the closed-loop source taxonomy. Five source kinds have active indexers at v0.34.0: `tool-registry`, `versioned-doc`, `official-docs`, `skill` (scans `Tools/UnrealMcpSkills/**/SKILL.md`), and `activity-log` (three producers: ActivityLog session-span cards [category `activity`], Task Atlas promoted markdown under `Saved/UnrealMcp/KnowledgeSources/TaskAtlas/*.md` [category `task-atlas`], and self-extension outcome cards sourced from `Saved/UnrealMcp/LastExtensionApply.json` [category `outcome`]). All five include flags (`includeOfficialDocs`, `includeVersionedDocs`, `includeToolRegistry`, `includeActivityLog`, `includeSkills`) default to true in `unreal.knowledge_index_refresh`. Only `runtime-memory` and `test-fixture` remain reserved-not-active — exactly what eval case `search_kind_status_reports_reserved` asserts. (Skill + ActivityLog indexing landed 2026-05-11 in commit 15ddac9; the "three kinds only" statement in `Docs/KnowledgeRagSources.md` §8 is a stale pre-T3 snapshot.)

Canonical event kinds include `tool_call`, `chat_turn`, `manifest_apply`, `manifest_dryrun`, `skill_apply`, `skill_distilled`, `asset_change`, `level_open`, `pie_event`, `map_check`, `console_command`, `extension_lock_acquire`, and `extension_lock_release`, plus legacy skill-recorder events.

Privacy classes:

| Class        | Applies To                                                           | Rule                                                                             |
| ------------ | -------------------------------------------------------------------- | -------------------------------------------------------------------------------- |
| `local-only` | runtime memory, ActivityLog, ChatHistory, manifests, supervisor logs | Store locally; data never leaves the local KnowledgeIndex. ActivityLog is indexed locally by default (pass `includeActivityLog:false` to `unreal.knowledge_index_refresh` to disable); extension-apply outcomes are appended as `outcome` cards from `Saved/UnrealMcp/LastExtensionApply.json`; ProjectMemory, ChatHistory, and supervisor logs have no indexer at v0.34.0 (`runtime-memory` is reserved-not-active). |
| `promotable` | skills and distilled drafts                                          | Move into reusable knowledge only through explicit promotion or indexing opt-in. |
| `versioned`  | docs, registry, versioned tests, curated source manifests            | Safe for default local indexing.                                                 |

## Task Atlas RAG Promotion

`To RAG` writes a markdown source under `Saved/UnrealMcp/KnowledgeSources/TaskAtlas/<taskId>.md` with task metadata, intent, summary, critical-path tools, and compact event refs, then refreshes the knowledge index. Those promoted workflows become searchable as Task Atlas KnowledgeCards.
