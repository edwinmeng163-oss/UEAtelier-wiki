---
title: "Source Map and Safety Rules"
source_repo: "https://github.com/edwinmeng163-oss/UEAtelier"
source_branch: "main"
source_head: "6e7b775"
source_describe: "v0.35.0-1-g6e7b775"
generated: "2026-07-14"
---
# Source Map and Safety Rules

## Repository Map

Important versioned paths:

```text
README.md, AGENTS.md, UEvolve.uproject, open_uevolve.command
Docs/agents-guide/
Docs/Architecture.md, Docs/CallTool.md, Docs/KnowledgeRag.md, Docs/SecurityModel.md
Docs/SelfExtensionPipeline.md, Docs/TaskAtlas.md, Docs/Verification.md
Docs/WindowsCompatibilityLessons.md, Docs/WindowsPackaging.md
Plugins/UnrealMcp/UnrealMcp.uplugin
Plugins/UnrealMcp/README.md
Plugins/UnrealMcp/Resources/
Plugins/UnrealMcp/Source/UnrealMcp/
Schemas/
Tools/UEAtelierCli/
Tools/UnrealMcpCodexBridge/, Tools/UnrealMcpKnowledge/
Tools/UnrealMcpPyToolSamples/, Tools/UnrealMcpSkills/, Tools/UnrealMcpTests/
Tools/UnrealMcpToolRegistry/, Tools/UnrealMcpToolScaffoldStarters/
Tools/UnrealMcpToolDocs/
Tools/UnrealMcpSupervisorTemplates/
Tools/extract_tool_schemas.py, Tools/generate_tool_docs.py
Tools/install_unrealmcp_to_project.py, Tools/validate_tool_registry.py
Tools/unreal_mcp_fetch_docs.py, Tools/unreal_mcp_stdio_proxy.py, Tools/unreal_mcp_supervisor.py
Docs/Release-2026-05.md, Docs/Release-2026-06.md, Docs/Release-2026-06b.md, Docs/Release-2026-06c.md, Docs/Release-2026-07.md, Docs/Release-2026-07b.md, Docs/Development-0.35.md
Examples/UEvolveExample/ (UE 5.6 maintenance-canary host), Examples/UEvolveExample57/ (UE 5.7.4 sample host, also the UE 5.8 build/commandlet host)
Tools/check_ue56_compat.py, Tools/git-hooks/pre-commit, Tools/install_git_hooks.sh, Tools/install_git_hooks.ps1
Tools/codex-prompt-header.md, Tools/package_plugin.ps1, Tools/UnrealMcpPyTools/
```

Generated or local-only paths that should not be committed unless explicitly reviewed:

```text
Saved/UnrealMcp/, Saved/UnrealMcp/CapturedToolArgs/, Content/, Tools/UnrealMcpToolScaffolds/
Tools/UnrealMcpSupervisor/, Binaries/, Intermediate/, DerivedDataCache/
Plugins/*/Binaries/, Plugins/*/Intermediate/
```

## Documentation Freshness Rule

After meaningful project changes, update AI-facing docs before handoff:

1. `AGENTS.md` for structure, workflow, safety, build/test commands, RAG behavior, or project status changes.
2. `README.md` for user-facing install, usage, features, deployment, or product positioning changes.
3. Focused docs under `Docs/` for architecture, RAG, security, self-extension, supervisor, deployment, and similar systems.
4. Tool changes must update ToolRegistry metadata, tests, and relevant docs in the same patch.

## Tool-count Discipline

The registry tool count (currently 190 entries; 178 visible via tools/list, 12 legacy_hidden) must stay synced across: `Tools/UnrealMcpToolRegistry/tools.json`, the plugin mirror `Plugins/UnrealMcp/Resources/ToolRegistry/tools.json`, the AGENTS.md "the registry contained N entries" line, the "N registered MCP tools" line in README.md (EN + Chinese + Japanese), and the tool lists in `Plugins/UnrealMcp/README.md`. Bump all references in the same commit that adds or removes a tool. Check with:

```bash
python3 -c 'import json; print(len(json.load(open("Tools/UnrealMcpToolRegistry/tools.json"))["tools"]))'
grep -nE "registry contained|registered MCP tools" AGENTS.md README.md Docs/agents-guide/*.md
```

## Multi-Engine Discipline

- The v0.35 source line prioritizes UE 5.7 and UE 5.8 as primary targets; UE 5.6 remains a maintenance compile canary from the same source tree.
- All `#if ENGINE_*_VERSION` belongs in `UnrealMcpEngineCompat.h` (v0.35 adds a `>=5.8` `FJsonObject::Values` arm there).
- Before switching the shared `Examples/UEvolveExample57` host between UE 5.7 and UE 5.8, delete both the plugin and host `Binaries/` and `Intermediate/` directories; partial platform/build-subdirectory cleanup is insufficient.
- Run `Tools/install_git_hooks.sh` (Windows: `Tools/install_git_hooks.ps1`) once after clone. It installs `Tools/git-hooks/pre-commit`, which runs the `Tools/check_ue56_compat.py` engine-compat linter (must report 0 errors, 0 warnings — any warning means engine-version preprocessor logic leaked outside `UnrealMcpEngineCompat.h`; v0.35 adds the UE 5.8 `FJsonObject::Values` pattern) plus `python3 Tools/validate_tool_registry.py` on every commit.
- `EAiProviderKind` enum values are append-only; do not renumber.

## Safety Rules For Future AI

Always:

- Run `git status --short` before editing.
- Respect existing uncommitted changes.
- Prefer `rg` / `rg --files`.
- Use `apply_patch` for manual edits.
- Use fixed schemas.
- Keep generated local data out of Git.
- Ensure write tools have policy, preflight, and postcheck metadata.
- Dry run, backup, manifest, build, test, and rollback source mutations.
- Use `unreal.preview_change_plan` or document plans for high-risk tasks.
- Write/read project memory for long work.
- Run `unreal.knowledge_eval_run` if RAG/tool recommendation changes.
- Run `python3 Tools/validate_tool_registry.py` if ToolRegistry changes.

Avoid:

- Adding tool logic to `UnrealMcpModule.cpp`.
- Committing `Saved/`, KnowledgeIndex files, fetched doc caches, API keys, local supervisor launchers, or unreviewed scaffold drafts.
- Assuming `Content/` is clean distributable plugin state.
- Installing both engine-level and project-level plugin copies.
- Assuming newly built C++ tools are visible until the Editor restarts.
- Treating ChatHistory as canonical product docs.

## Current Local Caveat

Re-check current state with:

```bash
git status --short
git branch --show-current
python3 Tools/validate_tool_registry.py
```

At generation time, `main` was at `6e7b775` (one commit past the `v0.35.0` tag) and registry validation reported `issueCount: 0` with 190 tools and a byte-identical plugin mirror.
