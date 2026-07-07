---
source_repo: "https://github.com/edwinmeng163-oss/UEAtelier"
source_branch: "main"
source_head: "421440e"
source_describe: "v0.34.0-1-g421440e"
generated: "2026-07-04"
---
# Git First-Parent History

Captured with:

```bash
git log --first-parent --date=short --pretty=format:'%ad %h %d %s'
```

First-parent commit count at generation time: 295.

## Newest First

```text
2026-07-03 421440e  (HEAD -> main, origin/main, origin/HEAD, claude/gallant-sanderson-832638) docs: fill v0.34.0 Win zip SHA-256 into release notes (all languages)
2026-07-03 dc09f70  (tag: v0.34.0) release: v0.34.0 — vetted-toolset standing authority + bridge network fix
2026-07-02 29f18c6  test(taskatlas): load SmokeFailedBumps fixture into the registry before smoke
2026-07-02 74dba2c  docs: v0.34.0 release notes (EN/中文/日本語) + version bumps
2026-07-02 7ef4313  fix(bridge): enable workspace-write network access for in-editor AI MCP calls
2026-07-02 bd25f37  (origin/feature/v0.34-maketoolset-ai-redesign, feature/v0.34-maketoolset-ai-redesign) feat(maketoolset): approve-modal per-step policy reasons (W2 polish)
2026-07-02 8f25812  feat(maketoolset): in-editor vetting flow for made tools (vetting W2)
2026-07-02 f253e50  feat(maketoolset): composite source-policy validator (vetting W1)
2026-07-02 0c45d59  feat(maketoolset): wire vetted-toolset scope into call_tool (Chunk 0.2)
2026-07-02 14edbc3  feat(maketoolset): add inert vetted-toolset policy seam (Chunk 0.0+0.1)
2026-07-02 d9f02f8  docs(v0.34): Make Tool Set AI-redesign Chunk 0 R0 spec
2026-06-11 7e796ca  (tag: v0.32.2, claude/objective-northcutt-48d975, claude/great-hawking-865107, claude/epic-kalam-322f5c, claude/elastic-allen-4eeeed, claude/agitated-meitner-dde1f3) release: v0.32.2 — MCP protocol conformance fix + wire-shape guardrails
2026-06-11 5d8e1e0  docs: refresh v0.32.2 user-facing install and deployment docs
2026-06-11 bd4b13d  fix(code-tools): exclude generated/runtime dirs at any path depth
2026-06-10 a87d63e  test(mcp): add official-SDK conformance smoke as release gate
2026-06-10 ecef387  test(mcp): pin protocol response shapes with key-whitelist guardrails
2026-06-10 fa22576  fix(mcp): strip non-spec structuredContent from tools/list result
2026-06-10 8859844  (tag: v0.32.1, claude/awesome-grothendieck-0be944) release: v0.32.1 — Windows Codex CLI provider + dev-host baseline cleanup
2026-06-10 e779259  (fix/dev-host-baseline-cleanup) test: dev-host automation baseline cleanup
2026-06-10 b2c5ac1  (origin/fix/win-codex-cli-provider, fix/win-codex-cli-provider) provider(codex-cli): Windows support via direct codex.exe spawn
2026-06-02 2a1018d  (experiment/post-4028be5) docs: post-v0.32.0 status refresh
2026-06-02 44b8e5c  (tag: v0.32.0) release: v0.32.0 — Make Tool Set rework + CLI↔Chat sync (stable)
2026-06-02 5a34af5  task-atlas: chat sync MCP tools + protocol B/C hardening (chunk 9 rework)
2026-06-02 d03e383  test: complete Task Atlas e2e and tools/list version coverage (chunk 8/8 rework)
2026-06-02 dedf744  task-atlas: add user tool list version tracking (chunk 7/8 rework)
2026-06-02 0650f56  task-atlas: thin UI handlers for made-tool actions (chunk 6/8 rework)
2026-06-02 d7ade4b  task-atlas: register made-tool MCP wrappers (chunk 5/8 rework)
2026-06-02 8bee31b  task-atlas: implement made-tool service actions (chunk 4/8 rework)
2026-06-01 fa0c0fe  task-atlas: implement MakeComposite transaction (chunk 3/8 rework)
2026-06-01 3c07b87  task-atlas: implement ClassifyTask and ListMadeTools (chunk 2/8 rework)
2026-06-01 3d71673  task-atlas: add service skeleton stubs (chunk 1/8 rework)
2026-06-01 4028be5  fix(usertool): run smoke Python on game thread so composites can call_tool
2026-06-01 6cca627  fix(task-atlas): composite policy-denied steps are expected, not smoke failures
2026-06-01 104439d  feat(task-atlas): rename Make Tool -> Make Tool Set + Made Tools manage/delete panel
2026-05-31 c063873  fix(usertool): smoke lock release must stay on the acquiring thread
2026-05-31 45d6cc9  (tag: v0.31.0) chore(release): bump UnrealMcp to v0.31.0 (Version 45)
2026-05-31 cea1cca  docs(planning): v0.31 stage 3 §10.3 R0 verdict — defer isolated C++ extension
2026-05-31 7b7377b  docs(capture): v0.31 stage2 Wave E — captured-args security model + agent guide
2026-05-31 baf4559  feat(task-atlas): v0.31 stage2 Wave D — preview composite generator + reentrant-reload deadlock fix
2026-05-31 32b901f  feat(task-atlas): v0.31 stage2 Wave C — schema v2 ordered stepRefs + replay eligibility
2026-05-31 7a6d0ea  feat(capture): v0.31 stage2 Wave B — private captured-args store + RAG isolation
2026-05-31 46886a5  feat(capture): v0.31 stage2 Wave A — ActivityLog eventId + arg redaction foundation
2026-05-31 a7cad6a  docs(planning): v0.31 stage-2 preview-composite R1-locked plan
2026-05-31 72904b9  refactor(hash): consolidate 5 self-implemented SHA-256 into UnrealMcp::HashUtils
2026-05-30 7ce9775  (tag: v0.30.0) fix(packaging): mirror PyToolSamples copy into package_plugin.ps1
2026-05-30 d4d150c  chore(gitignore): ignore example-host local byproducts + LFS hooks
2026-05-30 cc2d565  fix(packaging): include Tools/UnrealMcpPyToolSamples in release zip
2026-05-30 bb7eb74  chore(release): bump UnrealMcp to v0.30.0 (Version 44)
2026-05-30 119ea5e  feat(task-atlas): v0.30 Wave C — composite Python user-tool generation
2026-05-30 a0e7530  feat(call_tool): v0.30 Wave B — Python helper + return contract + full-chain test
2026-05-30 f3f8a15  feat(call_tool): v0.30 Wave A — fail-closed policy + UFUNCTION + matrix test
2026-05-29 ef560e9  docs(readme): v0.29.0 latest-release pointer (EN/zh/ja) -> Code Tools, 181 tools
2026-05-29 756a5a4  (tag: v0.29.0) docs(code-tools): v0.29 Wave C — Code Tools docs + bump to 0.29.0
2026-05-29 00d495a  feat(tools): v0.29 Wave B — Code Tools write closure (preview/apply/rollback)
2026-05-29 30e4bc7  feat(tools): v0.29 Wave A — code category + read-only Code Tools + path policy
2026-05-29 8ebbf7b  docs(planning): v0.29 scope decision — detach §10.3 / cpp_extension_tool
2026-05-29 3a531d6  docs(planning): import v0.28 cycle summary + v0.29 Code Tools plan
2026-05-24 1fa4f74  docs(readme): v0.28.0 trilingual README — capabilities, tool list, 174-tool count, release link
2026-05-24 e46bbf2  (tag: v0.28.0) feat(tools): v0.28.0 — core Blueprint authoring + playable-character closure + runtime verification
2026-05-24 986c346  release: v0.27.1 — version bump + changelog + third-person basic-Character fallback
2026-05-24 d367693  feat(tools): v0.27.1 Wave 2 — playable gameplay-setup tools (2 core + Python suite)
2026-05-23 f5ed138  feat(self-extension): v0.27.1 Wave 1 — make the self-extension toolchain Python-track-aware
2026-05-23 8307c51  (tag: v0.27.0) feat(security): v0.27.0 — wall off core C++ from the AI; self-extension = Python user track only
2026-05-23 6f54661  (tag: v0.26.3) feat(ui): v0.26.3 — ChatPanel UX (editable model field + export Save-As/reveal)
2026-05-23 9757484  fix(content): restore lost WorldDataLayers external actor for Lvl_TopDown (resolves dangling-ref startup error)
2026-05-23 e41d8f1  docs: add Karpathy coding-discipline guidelines to CLAUDE.md + AGENTS.md
2026-05-23 15d54d1  (tag: v0.26.2) fix(reliability): v0.26.2 — stop test config pollution + fix mcp_user_tool_smoke strict schema
2026-05-23 fa1bd20  docs(skills): add karpathy-guidelines skill (MIT, from multica-ai/andrej-karpathy-skills)
2026-05-22 551bd7d  (tag: v0.26.1) feat(prompt): v0.26.1 — wire skills discovery into central system prompt (rule 7)
2026-05-22 524bda5  docs(skills): add mcp-capability-routing front-door skill + cross-ref from self-extension
2026-05-22 59c8bf6  docs(packaging): capture v0.26.0 ship lessons (untracked-file zip leak + Win-zip CI timing race)
2026-05-22 09a6586  (tag: v0.26.0) feat(reform-c): v0.26.0 — extension safety (approval gate + Python user-extension track + lifecycle)
2026-05-21 33a88b5  (tag: v0.25.0) feat(codex): v0.25.0 Reform B — rewrite Codex CLI provider around `codex exec`
2026-05-21 fc86ccd  (tag: v0.24.4) fix(codex): v0.24.4 — harden CodexProvider bash command construction + write Provider invariants doc
2026-05-21 4d45e76  (tag: v0.24.3) fix(codex): prepend dev tool PATH to Codex CLI subprocess invocations
2026-05-21 6841428  (tag: v0.24.2) chore: v0.24.2 hotfix — hide deprecated OpenAI* UI + intl-first preset URLs
2026-05-21 dcbef47  (tag: v0.24.1) fix(provider-presets): handle nested settings chain events
2026-05-21 774528d  (tag: v0.24.0) chore(release): v0.24.0 — version bump, README + AGENTS refresh, menu sweep
2026-05-21 c40e4e1  fix(provider): preserve Kimi reasoning_content across tool calls
2026-05-20 4e63dc0  feat(settings): add AI provider preset system (Phase 1 — data + UI)
2026-05-20 37dfc14  feat(docs): A2 Phase 2 — per-tool reference markdown for all 160 tools
2026-05-20 9c746db  feat(registry): A2 Phase 1 — enrich tools.json inputSchema for all 160 tools
2026-05-20 8f66cba  docs: add badges, demo gallery placeholder, and issue templates
2026-05-20 2a04bf3  docs: split AGENTS handoff into focused agent guides
2026-05-20 3c60700  (tag: v0.23.1, claude/pensive-jones-ab2a33) fix(cli): v0.23.1 — wire editor_status into status payload + fix version_string fallback
2026-05-20 3d1c640  docs: README → v0.23.0 + AGENTS.md metadata block refresh
2026-05-20 6fe301e  (tag: v0.23.0) feat(cli): v0.23 — cli-anything-ueatelier Python CLI wrapper (160 tools)
2026-05-20 80042df  docs: README latest-release pointer → v0.22.2 + new repo URL
2026-05-20 cfd61b6  (tag: v0.22.2) rebrand: UEvolve → UEAtelier (project + UI; internals preserved)
2026-05-20 18d45e7  docs: add pitfall #12 — Mac-only build verify misses MSVC-promoted C4459
2026-05-19 d04f871  docs: README latest-release pointer → v0.22.1 (all 3 languages)
2026-05-19 3b93170  ci: drop verify_package_integrity --root from pre-package step
2026-05-19 350ffc5  fix(verifier): accept scaffold starter fallback when checking live repo
2026-05-19 28f7bac  (tag: v0.22.1) fix(automation): rename local LogPath to ProjectLogPath (UE 5.6 Win MSVC C4459)
2026-05-19 d189e1a  ci: GitHub Actions Windows release packaging
2026-05-19 f6588cf  docs: README latest-release pointer → v0.22.0 (all 3 languages)
2026-05-19 da8bc43  (tag: v0.22.0) chore(release): bump plugin VersionName 0.21.0 → 0.22.0
2026-05-19 a391854  feat(verification): v0.22 C1b — unreal.pie_smoke (159 → 160)
2026-05-19 7100c9e  docs: README latest-release pointer → v0.21.0 (all 3 languages)
2026-05-19 736c476  (tag: v0.21.0) chore(release): bump plugin VersionName 0.20.0 → 0.21.0
2026-05-19 107ac4b  feat(verification): v0.21 — unreal.editor_diagnostics (158 → 159)
2026-05-19 d3d5d7e  docs: README latest-release pointer → v0.20.0 (all 3 languages)
2026-05-19 e76f0dd  (tag: v0.20.0) chore(release): bump plugin VersionName 0.19.1 → 0.20.0
2026-05-19 370a2ab  feat(settings): auto-fill provider URL/model/binary on Kind change
2026-05-19 4eb48ff  feat(verification): v0.20 B2 — Task Atlas dogfood gates + watchdog hardening
2026-05-19 39d21ca  feat(verification): v0.20 B1 — C1a automation tool trio (155 → 158)
2026-05-19 dab4861  docs: refresh README + AGENTS current-release pointers to v0.19.1
2026-05-19 77bca31  docs: add UEvolve banner image to README header
2026-05-19 17f1449  docs: consolidated build & packaging pitfalls from Task Atlas program
2026-05-19 8dd9086  fix(verifier): accept Windows-style backslash zip entry paths
2026-05-19 1fb5c4a  fix(packaging): scaffold fallback to starters + forward-slash zip paths
2026-05-19 4c82cb1  (tag: v0.19.1) chore(release): bump plugin VersionName 0.19.0 → 0.19.1
2026-05-19 6a0d667  fix(build): UE 5.6 dev-host compile error from unity-build symbol collisions
2026-05-19 447d60f  docs: add Windows packaging guide for Win zip releases
2026-05-19 632de5c  (tag: v0.19.0) chore(release): bump plugin VersionName 0.18.0 → 0.19.0
2026-05-19 6741185  feat(task-atlas): add LLM label backfill tool (v0.19 Part C)
2026-05-19 f186c96  feat(task-atlas): activate [Make Tool] scaffold action (v0.19 Part A)
2026-05-19 ada09ba  feat(rag): ingest Task Atlas markdown knowledge sources (v0.19 Part B)
2026-05-19 0d24345  (tag: v0.18.0) chore(release): bump plugin VersionName 0.17.0 → 0.18.0
2026-05-19 c51d232  feat(task-atlas): v0.18 — activate Skills + RAG promote handlers
2026-05-19 0a59e0f  (tag: v0.17.0) chore(release): bump plugin VersionName 0.16.0 → 0.17.0
2026-05-19 79c5943  feat(task-atlas): v0.17 foundation — data layer + UI shell + Pin
2026-05-18 ec77765  (tag: v0.16.0) chore(release): bump plugin VersionName 0.15.2 → 0.16.0
2026-05-18 0c4fc5b  feat(tools): C2 — UMG widget edit parity + Material Instance surface (8 new tools, 141→149)
2026-05-18 3e516ce  (tag: v0.15.2, claude/silly-davinci-2dfb78) chore(release): bump plugin VersionName 0.15.1 → 0.15.2
2026-05-18 41cdb84  docs(fab): C5 Phase 2 chunk 2b — Fab submission readiness checklist
2026-05-18 d1fc4d8  feat(workbench): C5 Phase 2 chunk 2a — install doctor card in Slate panel
2026-05-17 b230dc5  (tag: v0.15.1) chore(release): bump plugin VersionName 0.15.0 → 0.15.1
2026-05-17 4eccdbc  feat(verify): C5 chunk 1b — install_doctor read-only runtime hardening tool
2026-05-17 5f4a8af  docs(registry): C5 chunk 1a-docs — fill 118 missing tool descriptions + 127 missing titles
2026-05-17 11b4682  feat(verifier): C5 chunk 1a — standalone package integrity verifier
2026-05-17 bab1723  Merge branch 'extension-loop-rework' — v0.15.0 milestone
2026-05-15 2ae7c8e  feat(packager): split BP-only vs C++ cold-start paths + first_launch_build wrapper
2026-05-15 782de48  docs(packager): clarify pure-unzip applies only to Blueprint-only projects
2026-05-15 13d0788  fix(packager): local ErrorActionPreference=Continue around native commands
2026-05-15 dfe77f0  fix(packager): redirect native stderr through Write-Host so package failures surface position + stack
2026-05-15 1c91016  feat(packager): full-experience zip variant + trilingual FIRST_LAUNCH for Win UE 5.6.1 pure-unzip pilot
2026-05-15 86976b9  feat(scaffolds): add starter scaffolds for unreal.fps.bootstrap + unreal.simulation.verify_input_drives_pawn
2026-05-15 6ed1ca0  feat(chatpanel): color-code read/write tool cards + summaryTemplate for human-readable tool log
2026-05-14 d4962a9  refactor(tools): isolate configure_fps_settings + bp_add_input_axis_event_node back to scaffold
2026-05-14 676b711  (tag: v0.12.1-pilot-crossplatform) feat(pilot): v0.12.1-pilot-crossplatform polish — verified Win wording + Stage 2 doc + .ps1 stderr fix
2026-05-14 91f899e  feat(pilot): add Windows package_plugin.ps1 + trilingual install/release pointers
2026-05-13 0906c8a  (tag: v0.12.0-pilot-mac-ue56-ue57) feat(pilot): add package_plugin.sh script + trilingual INSTALL.md for v0.12.0-pilot
2026-05-13 00fbf5e  chore(pilot): apply Phase 1 packaging blockers for v0.12.0-pilot drop-in
2026-05-13 6310715  docs(readme): add parallel English / 中文 / 日本語 overview sections with current detail
2026-05-13 61f3efa  (origin/feat/plugin-distributable, feat/plugin-distributable) docs(skill): adopt BB-reviewed 11-step canonical workflow ordering
2026-05-13 9696fe2  docs(skill): rewrite mcp-self-extension SKILL.md to anchor full design philosophy
2026-05-13 37ffed8  (tag: v0.11.5-scaffold-graduations) Revert "fix(scaffold): route unreal.scaffold_mcp_tool output through UnrealMcpSharedPathResolver"
2026-05-13 b32550a  chore(linter): add MakeDescriptor + dispatcher-branch integrity check to validate_tool_registry.py
2026-05-13 18c5321  chore(codex): extend prompt header with self-extension workflow + scaffold project-local rule
2026-05-12 73a46a5  feat(tools): promote bp_add_input_axis_event_node scaffold into the live registry
2026-05-12 30ec5ab  feat(tools): promote configure_fps_settings scaffold into the live registry
2026-05-12 17c4dbc  fix(scaffold): route unreal.scaffold_mcp_tool output through UnrealMcpSharedPathResolver
2026-05-12 f0cabdb  (tag: v0.11.4-bridge-mcp-fix) docs: freshness sweep after the v0.11.3 + v0.11.4 compat/bridge work
2026-05-12 a70e0ca  fix(bridge): declare transport=streamable-http on sub-codex spawn so unrealmcp registers with 109 tools
2026-05-12 9b80672  fix(bridge): register unrealmcp globally via ~/.codex/config.toml at startup
2026-05-12 6c6465f  (tag: v0.11.3-compat-pass2) feat(tools): add unreal.editor.engine_version read-only tool
2026-05-12 6f863a8  chore(tests): add IAutomationTest smoke for UnrealMcpEngineCompat shim
2026-05-12 66d926e  chore(linter): seed three more 5.7-only header patterns from audit (pass 2)
2026-05-12 764187e  fix(settings): add schemaVersion to provider backup JSON and refuse incompatible restores
2026-05-12 aa8b44a  chore(linter): seed FORBIDDEN_PATTERNS with two 5.7-only headers from audit
2026-05-12 9c9dc19  chore(linter): add engine header diff audit tool and reference it from check_ue56_compat.py
2026-05-12 e6e6d1e  chore(codex): extend prompt header with sandbox tier and editor smoke patterns
2026-05-12 1bd057b  chore(codex): add mandatory prompt header for codex-agent dispatch and reference from CLAUDE.md
2026-05-12 25cc17d  docs(readme): document Windows bun PATH setup matching Docs/Release-2026-05.md
2026-05-12 789ed5e  fix(provider): refuse Codex CLI on Windows with clear error and dropdown affordance
2026-05-12 4e68afc  fix(bridge): use os.tmpdir() for log path so Windows can boot the daemon
2026-05-12 2d8ef50  docs(release): document Windows bun PATH setup in all three language blocks
2026-05-12 b8522a5  (claude/peaceful-cannon-e9756d) docs(readme): document the multi-engine compatibility discipline and pre-commit hook install
2026-05-12 39e75eb  chore(compat): single shim header, pre-commit hook, append-only EAiProviderKind values
2026-05-12 c186552  (tag: v0.11.0-export-gate) feat(packager): gate exports to user-authored scaffolds and add list_exportable
2026-05-12 97a993e  feat: nested-project path resolver, tool packaging, and chat panel buttons
2026-05-12 b49d92d  fix(self-extension): test runner default paths walk up parents to find repo-root Tools/UnrealMcpTests
2026-05-12 4a9549d  fix(ux): chat AI Settings dedup, skill discovery walks up, bridge tells Codex to use native MCP
2026-05-12 37a0553  feat(settings): side-channel backup so Providers[] survives UE version switches
2026-05-12 f43c0b4  feat(compat): launcher scripts for the two bundled sample projects
2026-05-12 b8f4042  feat(compat): keep two sample-content hosts, one per UE version
2026-05-12 fbe49b1  fix(compat): bring Examples/UEvolveExample down to UE 5.6 like the root project
2026-05-12 f22e1c1  feat(ai): user-selectable model and effort for the Codex Desktop bridge
2026-05-12 7f6b29e  docs: trilingual patch note for UE 5.6 compatibility (2026-05-12)
2026-05-12 cc1b3cd  fix(compat): real UE 5.6.1 build pass — shim StringOutputDevice include
2026-05-11 3a5866a  fix(compat): drop EngineVersion from .uplugin — was causing strict-match skip
2026-05-11 4e65a1c  feat(compat): three-layer enforcement of UE 5.6 minimum support
2026-05-11 ece36fb  chore(compat): support Unreal Engine 5.6 as the lower bound
2026-05-11 393c24e  (claude/adoring-margulis-b76595) docs(CLAUDE.md): add Codex invocation rules for app session visibility
2026-05-11 1e456b5  feat(p7e): bridge Windows hardening — codex binary resolution and launchers
2026-05-11 d155ce7  docs: trilingual release notes and cross-platform setup guide
2026-05-11 2e5dc30  feat(p7d): cross-platform bridge transport (Windows support)
2026-05-11 a68e8cb  Merge branch 'dev-b/rag-closed-loop' — RAG closed loop and activity foundation
2026-05-11 01fd2aa  Merge branch 'feat/ai-multi-provider' — multi-provider AI + Plan B Codex Desktop bridge
2026-05-11 1e7f1e5  chore(gitignore): ignore Claude harness state and root Build dir
2026-05-10 3508b8f  Update Claude instructions for AGENTS.md
2026-05-10 8876db0  Rename AGENT.md to AGENTS.md
2026-05-10 fdb327c  Unify tool registry via symlinks and extract shared internal header
2026-05-10 4190d8e  Harden assistant thread safety and self-extension security
2026-05-10 32dcdde  Add Claude handoff guide
2026-05-10 8b1734b  Add agent handoff guide
2026-05-10 68feb0f  (claude/goofy-wing-3f2000) Improve RAG and self-extension workflow
2026-05-10 fd09486  Tighten self-extension readiness gates
2026-05-10 0e8f9d6  Harden self-generated scaffold validation
2026-05-07 0fcc51b  Stabilize AI chat position and network failures
2026-05-07 81ba3fb  Split chat conversation and tool logs
2026-05-07 0adcec0  Add chat tools overview button
2026-05-07 b90dd34  Improve chat streaming scroll and text selection
2026-05-07 ef17760  Add chat steer command
2026-05-07 6a24e13  Handle expired AI response ids
2026-05-07 93cb726  Add knowledge RAG and workflow automation tools
2026-05-06 d5a138e  Add onboarding visuals and endpoint checklists
2026-05-06 0f7fcb2  Refresh README deployment guidance
2026-05-06 257039a  (codex/handler-registry-split) Complete descriptor-first self-extension flow
2026-05-05 5d2db16  (origin/codex/handler-registry-split) Derive handler registry from tool registry
2026-05-05 79d7b5e  (origin/codex/tool-descriptor-registrar, codex/tool-descriptor-registrar) Split self-extension tools by responsibility
2026-05-05 0a97f8b  Harden self-extension pipeline gates
2026-05-05 29bf12a  Add descriptor registrar and precision tools
2026-05-05 3c852d9  (origin/codex/split-mcp-module-next, codex/split-mcp-module-next) Hide legacy gameplay scaffold tools
2026-05-04 64e0cd3  Harden tool registry and execution checks
2026-05-04 b88b27b  Trim MCP module entrypoint
2026-05-04 f25d1f5  Split MCP editor common helpers
2026-05-04 19bb763  Split MCP actor common helpers
2026-05-04 2e895b5  Split MCP core helpers
2026-05-04 07e6701  Split MCP tool schema helpers
2026-05-04 20e7a34  Split MCP tool dispatch
2026-05-04 69d8233  Split editor tab bindings
2026-05-04 eccad9f  Split chat command handling
2026-05-04 de8e957  Split MCP tool definitions
2026-05-04 b476e2e  Split MCP protocol implementation
2026-05-04 ffe8e13  Split assistant run implementation
2026-05-04 163e863  Split self-extension core helpers
2026-05-04 82ba646  Split self-extension apply tools
2026-05-04 22c8357  Split self-extension state tools
2026-05-04 d1fe622  Split self-extension scaffold test tools
2026-05-04 43f9f68  Move self-extension build and supervisor tools
2026-05-04 70c0386  Split self-extension build helper implementation
2026-05-04 6e4b0b6  Move self-extension snippet safety tools
2026-05-04 a8674d7  Move self-extension diff tool implementation
2026-05-04 8e6fe97  Move self-extension cleanup tool implementation
2026-05-04 8c08849  Move self-extension schema audit helpers
2026-05-04 6e7434e  Move blueprint helper implementation to blueprint tools
2026-05-04 0e418cd  Move widget helper implementation to widget tools
2026-05-04 275f644  Move MCP scaffold generator to scaffold tools
2026-05-04 8c87df8  Move gameplay scaffold implementation to scaffold tools
2026-05-04 72dc050  Move project memory implementation to memory tools
2026-05-04 7b05b57  Route skill promote through skill dispatch
2026-05-04 5948c52  Route self-extension module tools through callbacks
2026-05-04 73cd43c  Mark self-extension test handlers as split
2026-05-04 724c312  Split locked self-extension MCP dispatch
2026-05-04 8eece7d  Split lock-free self-extension MCP dispatch
2026-05-04 dba2cbf  Split skill MCP tool dispatch
2026-05-04 b7dcf0e  Split memory MCP tool dispatch
2026-05-04 8535d2e  Split scaffold MCP tool dispatch
2026-05-04 1c9cc56  Split widget MCP tools
2026-05-04 b221fbe  Split blueprint graph MCP tools
2026-05-04 2cee5f4  Split blueprint asset MCP tools
2026-05-04 dd2c970  Finish actor MCP tool split
2026-05-04 b764f3e  Split actor spawn MCP tools
2026-05-04 47ff56c  Split actor layout MCP tools
2026-05-04 cab3a72  Split actor component config MCP tools
2026-05-04 ad8b6c1  Split actor batch scale tag MCP tools
2026-05-04 30e5620  Split basic actor MCP tools
2026-05-04 a7d835f  Split actor query MCP tools
2026-05-04 f60a63c  Complete editor MCP tool split
2026-05-04 e750794  Split editor action MCP tools
2026-05-04 3060f02  Add root UEvolve host project
2026-05-04 b78f298  Split read-only editor MCP tools
2026-05-04 76c18e0  Add explicit MCP tool handler registry
2026-05-04 e7b935d  Complete explicit registry and workflow execution checks
2026-05-04 96ff50e  Add category-specific MCP execution verifiers
2026-05-04 7c86f3a  Add explicit tool registry and execution checks
2026-05-04 bf82e02  Rebrand as UEvolve workbench
2026-05-03 30aed12  Make skill activity recording opt in
2026-05-03 2938ebd  Add project license notices
2026-05-03 57e0848  Add skill activity distillation tools
2026-05-02 688afae  Improve chat toolbar for AI settings and skills
2026-05-02 50194ba  Rename public project branding to UEvolve
2026-05-02 53ba916  (origin/codex/unreal-mcp-modular-refactor, codex/unreal-mcp-modular-refactor) Update Chinese project overview
2026-05-02 d4d667b  Add thin Unreal MCP workbench UI
2026-05-02 9591f3e  Add collaboration guardrails and supervisor templates
2026-05-02 2dac1b9  Refactor Unreal MCP workbench modules
2026-05-02 a3299a2  Add project memory editing and skills
2026-05-02 9970e64  Productize MCP supervisor launchers
2026-05-02 e9de9d6  Add MCP failure recovery tooling
2026-05-01 d4c9ebb  Add MCP test suite generation
2026-05-01 e8fb3e2  Add MCP snippet patch safety tools
2026-05-01 dd07f54  Add MCP scaffold discovery tools
2026-05-01 d1a2317  Add MCP pipeline visibility tools
2026-04-30 3676954  Add MCP extension pipeline and supervisor
2026-04-30 699df16  Add MCP editor build and tool test workflow
2026-04-30 1629893  Add MCP scaffold apply and rollback tools
2026-04-30 3b6368e  Add MCP self-extension phase one tools
2026-04-30 3079154  Add MCP tool scaffold workflow
2026-04-30 c02db15  Document Windows deployment notes
2026-04-30 535c0d2  Add deployment guide
2026-04-30 aaa8386  Remove tavern prototype from current project
2026-04-30 a230370  Add project README
2026-04-27 ccc6d6f  Initial Unreal project import
```

## Oldest First

```text
2026-04-27 ccc6d6f  Initial Unreal project import
2026-04-30 a230370  Add project README
2026-04-30 aaa8386  Remove tavern prototype from current project
2026-04-30 535c0d2  Add deployment guide
2026-04-30 c02db15  Document Windows deployment notes
2026-04-30 3079154  Add MCP tool scaffold workflow
2026-04-30 3b6368e  Add MCP self-extension phase one tools
2026-04-30 1629893  Add MCP scaffold apply and rollback tools
2026-04-30 699df16  Add MCP editor build and tool test workflow
2026-04-30 3676954  Add MCP extension pipeline and supervisor
2026-05-01 d1a2317  Add MCP pipeline visibility tools
2026-05-01 dd07f54  Add MCP scaffold discovery tools
2026-05-01 e8fb3e2  Add MCP snippet patch safety tools
2026-05-01 d4c9ebb  Add MCP test suite generation
2026-05-02 e9de9d6  Add MCP failure recovery tooling
2026-05-02 9970e64  Productize MCP supervisor launchers
2026-05-02 a3299a2  Add project memory editing and skills
2026-05-02 2dac1b9  Refactor Unreal MCP workbench modules
2026-05-02 9591f3e  Add collaboration guardrails and supervisor templates
2026-05-02 d4d667b  Add thin Unreal MCP workbench UI
2026-05-02 53ba916  (origin/codex/unreal-mcp-modular-refactor, codex/unreal-mcp-modular-refactor) Update Chinese project overview
2026-05-02 50194ba  Rename public project branding to UEvolve
2026-05-02 688afae  Improve chat toolbar for AI settings and skills
2026-05-03 57e0848  Add skill activity distillation tools
2026-05-03 2938ebd  Add project license notices
2026-05-03 30aed12  Make skill activity recording opt in
2026-05-04 bf82e02  Rebrand as UEvolve workbench
2026-05-04 7c86f3a  Add explicit tool registry and execution checks
2026-05-04 96ff50e  Add category-specific MCP execution verifiers
2026-05-04 e7b935d  Complete explicit registry and workflow execution checks
2026-05-04 76c18e0  Add explicit MCP tool handler registry
2026-05-04 b78f298  Split read-only editor MCP tools
2026-05-04 3060f02  Add root UEvolve host project
2026-05-04 e750794  Split editor action MCP tools
2026-05-04 f60a63c  Complete editor MCP tool split
2026-05-04 a7d835f  Split actor query MCP tools
2026-05-04 30e5620  Split basic actor MCP tools
2026-05-04 ad8b6c1  Split actor batch scale tag MCP tools
2026-05-04 cab3a72  Split actor component config MCP tools
2026-05-04 47ff56c  Split actor layout MCP tools
2026-05-04 b764f3e  Split actor spawn MCP tools
2026-05-04 dd2c970  Finish actor MCP tool split
2026-05-04 2cee5f4  Split blueprint asset MCP tools
2026-05-04 b221fbe  Split blueprint graph MCP tools
2026-05-04 1c9cc56  Split widget MCP tools
2026-05-04 8535d2e  Split scaffold MCP tool dispatch
2026-05-04 b7dcf0e  Split memory MCP tool dispatch
2026-05-04 dba2cbf  Split skill MCP tool dispatch
2026-05-04 8eece7d  Split lock-free self-extension MCP dispatch
2026-05-04 724c312  Split locked self-extension MCP dispatch
2026-05-04 73cd43c  Mark self-extension test handlers as split
2026-05-04 5948c52  Route self-extension module tools through callbacks
2026-05-04 7b05b57  Route skill promote through skill dispatch
2026-05-04 72dc050  Move project memory implementation to memory tools
2026-05-04 8c87df8  Move gameplay scaffold implementation to scaffold tools
2026-05-04 275f644  Move MCP scaffold generator to scaffold tools
2026-05-04 0e418cd  Move widget helper implementation to widget tools
2026-05-04 6e7434e  Move blueprint helper implementation to blueprint tools
2026-05-04 8c08849  Move self-extension schema audit helpers
2026-05-04 8e6fe97  Move self-extension cleanup tool implementation
2026-05-04 a8674d7  Move self-extension diff tool implementation
2026-05-04 6e4b0b6  Move self-extension snippet safety tools
2026-05-04 70c0386  Split self-extension build helper implementation
2026-05-04 43f9f68  Move self-extension build and supervisor tools
2026-05-04 d1fe622  Split self-extension scaffold test tools
2026-05-04 22c8357  Split self-extension state tools
2026-05-04 82ba646  Split self-extension apply tools
2026-05-04 163e863  Split self-extension core helpers
2026-05-04 ffe8e13  Split assistant run implementation
2026-05-04 b476e2e  Split MCP protocol implementation
2026-05-04 de8e957  Split MCP tool definitions
2026-05-04 eccad9f  Split chat command handling
2026-05-04 69d8233  Split editor tab bindings
2026-05-04 20e7a34  Split MCP tool dispatch
2026-05-04 07e6701  Split MCP tool schema helpers
2026-05-04 2e895b5  Split MCP core helpers
2026-05-04 19bb763  Split MCP actor common helpers
2026-05-04 f25d1f5  Split MCP editor common helpers
2026-05-04 b88b27b  Trim MCP module entrypoint
2026-05-04 64e0cd3  Harden tool registry and execution checks
2026-05-05 3c852d9  (origin/codex/split-mcp-module-next, codex/split-mcp-module-next) Hide legacy gameplay scaffold tools
2026-05-05 29bf12a  Add descriptor registrar and precision tools
2026-05-05 0a97f8b  Harden self-extension pipeline gates
2026-05-05 79d7b5e  (origin/codex/tool-descriptor-registrar, codex/tool-descriptor-registrar) Split self-extension tools by responsibility
2026-05-05 5d2db16  (origin/codex/handler-registry-split) Derive handler registry from tool registry
2026-05-06 257039a  (codex/handler-registry-split) Complete descriptor-first self-extension flow
2026-05-06 0f7fcb2  Refresh README deployment guidance
2026-05-06 d5a138e  Add onboarding visuals and endpoint checklists
2026-05-07 93cb726  Add knowledge RAG and workflow automation tools
2026-05-07 6a24e13  Handle expired AI response ids
2026-05-07 ef17760  Add chat steer command
2026-05-07 b90dd34  Improve chat streaming scroll and text selection
2026-05-07 0adcec0  Add chat tools overview button
2026-05-07 81ba3fb  Split chat conversation and tool logs
2026-05-07 0fcc51b  Stabilize AI chat position and network failures
2026-05-10 0e8f9d6  Harden self-generated scaffold validation
2026-05-10 fd09486  Tighten self-extension readiness gates
2026-05-10 68feb0f  (claude/goofy-wing-3f2000) Improve RAG and self-extension workflow
2026-05-10 8b1734b  Add agent handoff guide
2026-05-10 32dcdde  Add Claude handoff guide
2026-05-10 4190d8e  Harden assistant thread safety and self-extension security
2026-05-10 fdb327c  Unify tool registry via symlinks and extract shared internal header
2026-05-10 8876db0  Rename AGENT.md to AGENTS.md
2026-05-10 3508b8f  Update Claude instructions for AGENTS.md
2026-05-11 1e7f1e5  chore(gitignore): ignore Claude harness state and root Build dir
2026-05-11 01fd2aa  Merge branch 'feat/ai-multi-provider' — multi-provider AI + Plan B Codex Desktop bridge
2026-05-11 a68e8cb  Merge branch 'dev-b/rag-closed-loop' — RAG closed loop and activity foundation
2026-05-11 2e5dc30  feat(p7d): cross-platform bridge transport (Windows support)
2026-05-11 d155ce7  docs: trilingual release notes and cross-platform setup guide
2026-05-11 1e456b5  feat(p7e): bridge Windows hardening — codex binary resolution and launchers
2026-05-11 393c24e  (claude/adoring-margulis-b76595) docs(CLAUDE.md): add Codex invocation rules for app session visibility
2026-05-11 ece36fb  chore(compat): support Unreal Engine 5.6 as the lower bound
2026-05-11 4e65a1c  feat(compat): three-layer enforcement of UE 5.6 minimum support
2026-05-11 3a5866a  fix(compat): drop EngineVersion from .uplugin — was causing strict-match skip
2026-05-12 cc1b3cd  fix(compat): real UE 5.6.1 build pass — shim StringOutputDevice include
2026-05-12 7f6b29e  docs: trilingual patch note for UE 5.6 compatibility (2026-05-12)
2026-05-12 f22e1c1  feat(ai): user-selectable model and effort for the Codex Desktop bridge
2026-05-12 fbe49b1  fix(compat): bring Examples/UEvolveExample down to UE 5.6 like the root project
2026-05-12 b8f4042  feat(compat): keep two sample-content hosts, one per UE version
2026-05-12 f43c0b4  feat(compat): launcher scripts for the two bundled sample projects
2026-05-12 37a0553  feat(settings): side-channel backup so Providers[] survives UE version switches
2026-05-12 4a9549d  fix(ux): chat AI Settings dedup, skill discovery walks up, bridge tells Codex to use native MCP
2026-05-12 b49d92d  fix(self-extension): test runner default paths walk up parents to find repo-root Tools/UnrealMcpTests
2026-05-12 97a993e  feat: nested-project path resolver, tool packaging, and chat panel buttons
2026-05-12 c186552  (tag: v0.11.0-export-gate) feat(packager): gate exports to user-authored scaffolds and add list_exportable
2026-05-12 39e75eb  chore(compat): single shim header, pre-commit hook, append-only EAiProviderKind values
2026-05-12 b8522a5  (claude/peaceful-cannon-e9756d) docs(readme): document the multi-engine compatibility discipline and pre-commit hook install
2026-05-12 2d8ef50  docs(release): document Windows bun PATH setup in all three language blocks
2026-05-12 4e68afc  fix(bridge): use os.tmpdir() for log path so Windows can boot the daemon
2026-05-12 789ed5e  fix(provider): refuse Codex CLI on Windows with clear error and dropdown affordance
2026-05-12 25cc17d  docs(readme): document Windows bun PATH setup matching Docs/Release-2026-05.md
2026-05-12 1bd057b  chore(codex): add mandatory prompt header for codex-agent dispatch and reference from CLAUDE.md
2026-05-12 e6e6d1e  chore(codex): extend prompt header with sandbox tier and editor smoke patterns
2026-05-12 9c9dc19  chore(linter): add engine header diff audit tool and reference it from check_ue56_compat.py
2026-05-12 aa8b44a  chore(linter): seed FORBIDDEN_PATTERNS with two 5.7-only headers from audit
2026-05-12 764187e  fix(settings): add schemaVersion to provider backup JSON and refuse incompatible restores
2026-05-12 66d926e  chore(linter): seed three more 5.7-only header patterns from audit (pass 2)
2026-05-12 6f863a8  chore(tests): add IAutomationTest smoke for UnrealMcpEngineCompat shim
2026-05-12 6c6465f  (tag: v0.11.3-compat-pass2) feat(tools): add unreal.editor.engine_version read-only tool
2026-05-12 9b80672  fix(bridge): register unrealmcp globally via ~/.codex/config.toml at startup
2026-05-12 a70e0ca  fix(bridge): declare transport=streamable-http on sub-codex spawn so unrealmcp registers with 109 tools
2026-05-12 f0cabdb  (tag: v0.11.4-bridge-mcp-fix) docs: freshness sweep after the v0.11.3 + v0.11.4 compat/bridge work
2026-05-12 17c4dbc  fix(scaffold): route unreal.scaffold_mcp_tool output through UnrealMcpSharedPathResolver
2026-05-12 30ec5ab  feat(tools): promote configure_fps_settings scaffold into the live registry
2026-05-12 73a46a5  feat(tools): promote bp_add_input_axis_event_node scaffold into the live registry
2026-05-13 18c5321  chore(codex): extend prompt header with self-extension workflow + scaffold project-local rule
2026-05-13 b32550a  chore(linter): add MakeDescriptor + dispatcher-branch integrity check to validate_tool_registry.py
2026-05-13 37ffed8  (tag: v0.11.5-scaffold-graduations) Revert "fix(scaffold): route unreal.scaffold_mcp_tool output through UnrealMcpSharedPathResolver"
2026-05-13 9696fe2  docs(skill): rewrite mcp-self-extension SKILL.md to anchor full design philosophy
2026-05-13 61f3efa  (origin/feat/plugin-distributable, feat/plugin-distributable) docs(skill): adopt BB-reviewed 11-step canonical workflow ordering
2026-05-13 6310715  docs(readme): add parallel English / 中文 / 日本語 overview sections with current detail
2026-05-13 00fbf5e  chore(pilot): apply Phase 1 packaging blockers for v0.12.0-pilot drop-in
2026-05-13 0906c8a  (tag: v0.12.0-pilot-mac-ue56-ue57) feat(pilot): add package_plugin.sh script + trilingual INSTALL.md for v0.12.0-pilot
2026-05-14 91f899e  feat(pilot): add Windows package_plugin.ps1 + trilingual install/release pointers
2026-05-14 676b711  (tag: v0.12.1-pilot-crossplatform) feat(pilot): v0.12.1-pilot-crossplatform polish — verified Win wording + Stage 2 doc + .ps1 stderr fix
2026-05-14 d4962a9  refactor(tools): isolate configure_fps_settings + bp_add_input_axis_event_node back to scaffold
2026-05-15 6ed1ca0  feat(chatpanel): color-code read/write tool cards + summaryTemplate for human-readable tool log
2026-05-15 86976b9  feat(scaffolds): add starter scaffolds for unreal.fps.bootstrap + unreal.simulation.verify_input_drives_pawn
2026-05-15 1c91016  feat(packager): full-experience zip variant + trilingual FIRST_LAUNCH for Win UE 5.6.1 pure-unzip pilot
2026-05-15 dfe77f0  fix(packager): redirect native stderr through Write-Host so package failures surface position + stack
2026-05-15 13d0788  fix(packager): local ErrorActionPreference=Continue around native commands
2026-05-15 782de48  docs(packager): clarify pure-unzip applies only to Blueprint-only projects
2026-05-15 2ae7c8e  feat(packager): split BP-only vs C++ cold-start paths + first_launch_build wrapper
2026-05-17 bab1723  Merge branch 'extension-loop-rework' — v0.15.0 milestone
2026-05-17 11b4682  feat(verifier): C5 chunk 1a — standalone package integrity verifier
2026-05-17 5f4a8af  docs(registry): C5 chunk 1a-docs — fill 118 missing tool descriptions + 127 missing titles
2026-05-17 4eccdbc  feat(verify): C5 chunk 1b — install_doctor read-only runtime hardening tool
2026-05-17 b230dc5  (tag: v0.15.1) chore(release): bump plugin VersionName 0.15.0 → 0.15.1
2026-05-18 d1fc4d8  feat(workbench): C5 Phase 2 chunk 2a — install doctor card in Slate panel
2026-05-18 41cdb84  docs(fab): C5 Phase 2 chunk 2b — Fab submission readiness checklist
2026-05-18 3e516ce  (tag: v0.15.2, claude/silly-davinci-2dfb78) chore(release): bump plugin VersionName 0.15.1 → 0.15.2
2026-05-18 0c4fc5b  feat(tools): C2 — UMG widget edit parity + Material Instance surface (8 new tools, 141→149)
2026-05-18 ec77765  (tag: v0.16.0) chore(release): bump plugin VersionName 0.15.2 → 0.16.0
2026-05-19 79c5943  feat(task-atlas): v0.17 foundation — data layer + UI shell + Pin
2026-05-19 0a59e0f  (tag: v0.17.0) chore(release): bump plugin VersionName 0.16.0 → 0.17.0
2026-05-19 c51d232  feat(task-atlas): v0.18 — activate Skills + RAG promote handlers
2026-05-19 0d24345  (tag: v0.18.0) chore(release): bump plugin VersionName 0.17.0 → 0.18.0
2026-05-19 ada09ba  feat(rag): ingest Task Atlas markdown knowledge sources (v0.19 Part B)
2026-05-19 f186c96  feat(task-atlas): activate [Make Tool] scaffold action (v0.19 Part A)
2026-05-19 6741185  feat(task-atlas): add LLM label backfill tool (v0.19 Part C)
2026-05-19 632de5c  (tag: v0.19.0) chore(release): bump plugin VersionName 0.18.0 → 0.19.0
2026-05-19 447d60f  docs: add Windows packaging guide for Win zip releases
2026-05-19 6a0d667  fix(build): UE 5.6 dev-host compile error from unity-build symbol collisions
2026-05-19 4c82cb1  (tag: v0.19.1) chore(release): bump plugin VersionName 0.19.0 → 0.19.1
2026-05-19 1fb5c4a  fix(packaging): scaffold fallback to starters + forward-slash zip paths
2026-05-19 8dd9086  fix(verifier): accept Windows-style backslash zip entry paths
2026-05-19 17f1449  docs: consolidated build & packaging pitfalls from Task Atlas program
2026-05-19 77bca31  docs: add UEvolve banner image to README header
2026-05-19 dab4861  docs: refresh README + AGENTS current-release pointers to v0.19.1
2026-05-19 39d21ca  feat(verification): v0.20 B1 — C1a automation tool trio (155 → 158)
2026-05-19 4eb48ff  feat(verification): v0.20 B2 — Task Atlas dogfood gates + watchdog hardening
2026-05-19 370a2ab  feat(settings): auto-fill provider URL/model/binary on Kind change
2026-05-19 e76f0dd  (tag: v0.20.0) chore(release): bump plugin VersionName 0.19.1 → 0.20.0
2026-05-19 d3d5d7e  docs: README latest-release pointer → v0.20.0 (all 3 languages)
2026-05-19 107ac4b  feat(verification): v0.21 — unreal.editor_diagnostics (158 → 159)
2026-05-19 736c476  (tag: v0.21.0) chore(release): bump plugin VersionName 0.20.0 → 0.21.0
2026-05-19 7100c9e  docs: README latest-release pointer → v0.21.0 (all 3 languages)
2026-05-19 a391854  feat(verification): v0.22 C1b — unreal.pie_smoke (159 → 160)
2026-05-19 da8bc43  (tag: v0.22.0) chore(release): bump plugin VersionName 0.21.0 → 0.22.0
2026-05-19 f6588cf  docs: README latest-release pointer → v0.22.0 (all 3 languages)
2026-05-19 d189e1a  ci: GitHub Actions Windows release packaging
2026-05-19 28f7bac  (tag: v0.22.1) fix(automation): rename local LogPath to ProjectLogPath (UE 5.6 Win MSVC C4459)
2026-05-19 350ffc5  fix(verifier): accept scaffold starter fallback when checking live repo
2026-05-19 3b93170  ci: drop verify_package_integrity --root from pre-package step
2026-05-19 d04f871  docs: README latest-release pointer → v0.22.1 (all 3 languages)
2026-05-20 18d45e7  docs: add pitfall #12 — Mac-only build verify misses MSVC-promoted C4459
2026-05-20 cfd61b6  (tag: v0.22.2) rebrand: UEvolve → UEAtelier (project + UI; internals preserved)
2026-05-20 80042df  docs: README latest-release pointer → v0.22.2 + new repo URL
2026-05-20 6fe301e  (tag: v0.23.0) feat(cli): v0.23 — cli-anything-ueatelier Python CLI wrapper (160 tools)
2026-05-20 3d1c640  docs: README → v0.23.0 + AGENTS.md metadata block refresh
2026-05-20 3c60700  (tag: v0.23.1, claude/pensive-jones-ab2a33) fix(cli): v0.23.1 — wire editor_status into status payload + fix version_string fallback
2026-05-20 2a04bf3  docs: split AGENTS handoff into focused agent guides
2026-05-20 8f66cba  docs: add badges, demo gallery placeholder, and issue templates
2026-05-20 9c746db  feat(registry): A2 Phase 1 — enrich tools.json inputSchema for all 160 tools
2026-05-20 37dfc14  feat(docs): A2 Phase 2 — per-tool reference markdown for all 160 tools
2026-05-20 4e63dc0  feat(settings): add AI provider preset system (Phase 1 — data + UI)
2026-05-21 c40e4e1  fix(provider): preserve Kimi reasoning_content across tool calls
2026-05-21 774528d  (tag: v0.24.0) chore(release): v0.24.0 — version bump, README + AGENTS refresh, menu sweep
2026-05-21 dcbef47  (tag: v0.24.1) fix(provider-presets): handle nested settings chain events
2026-05-21 6841428  (tag: v0.24.2) chore: v0.24.2 hotfix — hide deprecated OpenAI* UI + intl-first preset URLs
2026-05-21 4d45e76  (tag: v0.24.3) fix(codex): prepend dev tool PATH to Codex CLI subprocess invocations
2026-05-21 fc86ccd  (tag: v0.24.4) fix(codex): v0.24.4 — harden CodexProvider bash command construction + write Provider invariants doc
2026-05-21 33a88b5  (tag: v0.25.0) feat(codex): v0.25.0 Reform B — rewrite Codex CLI provider around `codex exec`
2026-05-22 09a6586  (tag: v0.26.0) feat(reform-c): v0.26.0 — extension safety (approval gate + Python user-extension track + lifecycle)
2026-05-22 59c8bf6  docs(packaging): capture v0.26.0 ship lessons (untracked-file zip leak + Win-zip CI timing race)
2026-05-22 524bda5  docs(skills): add mcp-capability-routing front-door skill + cross-ref from self-extension
2026-05-22 551bd7d  (tag: v0.26.1) feat(prompt): v0.26.1 — wire skills discovery into central system prompt (rule 7)
2026-05-23 fa1bd20  docs(skills): add karpathy-guidelines skill (MIT, from multica-ai/andrej-karpathy-skills)
2026-05-23 15d54d1  (tag: v0.26.2) fix(reliability): v0.26.2 — stop test config pollution + fix mcp_user_tool_smoke strict schema
2026-05-23 e41d8f1  docs: add Karpathy coding-discipline guidelines to CLAUDE.md + AGENTS.md
2026-05-23 9757484  fix(content): restore lost WorldDataLayers external actor for Lvl_TopDown (resolves dangling-ref startup error)
2026-05-23 6f54661  (tag: v0.26.3) feat(ui): v0.26.3 — ChatPanel UX (editable model field + export Save-As/reveal)
2026-05-23 8307c51  (tag: v0.27.0) feat(security): v0.27.0 — wall off core C++ from the AI; self-extension = Python user track only
2026-05-23 f5ed138  feat(self-extension): v0.27.1 Wave 1 — make the self-extension toolchain Python-track-aware
2026-05-24 d367693  feat(tools): v0.27.1 Wave 2 — playable gameplay-setup tools (2 core + Python suite)
2026-05-24 986c346  release: v0.27.1 — version bump + changelog + third-person basic-Character fallback
2026-05-24 e46bbf2  (tag: v0.28.0) feat(tools): v0.28.0 — core Blueprint authoring + playable-character closure + runtime verification
2026-05-24 1fa4f74  docs(readme): v0.28.0 trilingual README — capabilities, tool list, 174-tool count, release link
2026-05-29 3a531d6  docs(planning): import v0.28 cycle summary + v0.29 Code Tools plan
2026-05-29 8ebbf7b  docs(planning): v0.29 scope decision — detach §10.3 / cpp_extension_tool
2026-05-29 30e4bc7  feat(tools): v0.29 Wave A — code category + read-only Code Tools + path policy
2026-05-29 00d495a  feat(tools): v0.29 Wave B — Code Tools write closure (preview/apply/rollback)
2026-05-29 756a5a4  (tag: v0.29.0) docs(code-tools): v0.29 Wave C — Code Tools docs + bump to 0.29.0
2026-05-29 ef560e9  docs(readme): v0.29.0 latest-release pointer (EN/zh/ja) -> Code Tools, 181 tools
2026-05-30 f3f8a15  feat(call_tool): v0.30 Wave A — fail-closed policy + UFUNCTION + matrix test
2026-05-30 a0e7530  feat(call_tool): v0.30 Wave B — Python helper + return contract + full-chain test
2026-05-30 119ea5e  feat(task-atlas): v0.30 Wave C — composite Python user-tool generation
2026-05-30 bb7eb74  chore(release): bump UnrealMcp to v0.30.0 (Version 44)
2026-05-30 cc2d565  fix(packaging): include Tools/UnrealMcpPyToolSamples in release zip
2026-05-30 d4d150c  chore(gitignore): ignore example-host local byproducts + LFS hooks
2026-05-30 7ce9775  (tag: v0.30.0) fix(packaging): mirror PyToolSamples copy into package_plugin.ps1
2026-05-31 72904b9  refactor(hash): consolidate 5 self-implemented SHA-256 into UnrealMcp::HashUtils
2026-05-31 a7cad6a  docs(planning): v0.31 stage-2 preview-composite R1-locked plan
2026-05-31 46886a5  feat(capture): v0.31 stage2 Wave A — ActivityLog eventId + arg redaction foundation
2026-05-31 7a6d0ea  feat(capture): v0.31 stage2 Wave B — private captured-args store + RAG isolation
2026-05-31 32b901f  feat(task-atlas): v0.31 stage2 Wave C — schema v2 ordered stepRefs + replay eligibility
2026-05-31 baf4559  feat(task-atlas): v0.31 stage2 Wave D — preview composite generator + reentrant-reload deadlock fix
2026-05-31 7b7377b  docs(capture): v0.31 stage2 Wave E — captured-args security model + agent guide
2026-05-31 cea1cca  docs(planning): v0.31 stage 3 §10.3 R0 verdict — defer isolated C++ extension
2026-05-31 45d6cc9  (tag: v0.31.0) chore(release): bump UnrealMcp to v0.31.0 (Version 45)
2026-05-31 c063873  fix(usertool): smoke lock release must stay on the acquiring thread
2026-06-01 104439d  feat(task-atlas): rename Make Tool -> Make Tool Set + Made Tools manage/delete panel
2026-06-01 6cca627  fix(task-atlas): composite policy-denied steps are expected, not smoke failures
2026-06-01 4028be5  fix(usertool): run smoke Python on game thread so composites can call_tool
2026-06-01 3d71673  task-atlas: add service skeleton stubs (chunk 1/8 rework)
2026-06-01 3c07b87  task-atlas: implement ClassifyTask and ListMadeTools (chunk 2/8 rework)
2026-06-01 fa0c0fe  task-atlas: implement MakeComposite transaction (chunk 3/8 rework)
2026-06-02 8bee31b  task-atlas: implement made-tool service actions (chunk 4/8 rework)
2026-06-02 d7ade4b  task-atlas: register made-tool MCP wrappers (chunk 5/8 rework)
2026-06-02 0650f56  task-atlas: thin UI handlers for made-tool actions (chunk 6/8 rework)
2026-06-02 dedf744  task-atlas: add user tool list version tracking (chunk 7/8 rework)
2026-06-02 d03e383  test: complete Task Atlas e2e and tools/list version coverage (chunk 8/8 rework)
2026-06-02 5a34af5  task-atlas: chat sync MCP tools + protocol B/C hardening (chunk 9 rework)
2026-06-02 44b8e5c  (tag: v0.32.0) release: v0.32.0 — Make Tool Set rework + CLI↔Chat sync (stable)
2026-06-02 2a1018d  (experiment/post-4028be5) docs: post-v0.32.0 status refresh
2026-06-10 b2c5ac1  (origin/fix/win-codex-cli-provider, fix/win-codex-cli-provider) provider(codex-cli): Windows support via direct codex.exe spawn
2026-06-10 e779259  (fix/dev-host-baseline-cleanup) test: dev-host automation baseline cleanup
2026-06-10 8859844  (tag: v0.32.1, claude/awesome-grothendieck-0be944) release: v0.32.1 — Windows Codex CLI provider + dev-host baseline cleanup
2026-06-10 fa22576  fix(mcp): strip non-spec structuredContent from tools/list result
2026-06-10 ecef387  test(mcp): pin protocol response shapes with key-whitelist guardrails
2026-06-10 a87d63e  test(mcp): add official-SDK conformance smoke as release gate
2026-06-11 bd4b13d  fix(code-tools): exclude generated/runtime dirs at any path depth
2026-06-11 5d8e1e0  docs: refresh v0.32.2 user-facing install and deployment docs
2026-06-11 7e796ca  (tag: v0.32.2, claude/objective-northcutt-48d975, claude/great-hawking-865107, claude/epic-kalam-322f5c, claude/elastic-allen-4eeeed, claude/agitated-meitner-dde1f3) release: v0.32.2 — MCP protocol conformance fix + wire-shape guardrails
2026-07-02 d9f02f8  docs(v0.34): Make Tool Set AI-redesign Chunk 0 R0 spec
2026-07-02 14edbc3  feat(maketoolset): add inert vetted-toolset policy seam (Chunk 0.0+0.1)
2026-07-02 0c45d59  feat(maketoolset): wire vetted-toolset scope into call_tool (Chunk 0.2)
2026-07-02 f253e50  feat(maketoolset): composite source-policy validator (vetting W1)
2026-07-02 8f25812  feat(maketoolset): in-editor vetting flow for made tools (vetting W2)
2026-07-02 bd25f37  (origin/feature/v0.34-maketoolset-ai-redesign, feature/v0.34-maketoolset-ai-redesign) feat(maketoolset): approve-modal per-step policy reasons (W2 polish)
2026-07-02 7ef4313  fix(bridge): enable workspace-write network access for in-editor AI MCP calls
2026-07-02 74dba2c  docs: v0.34.0 release notes (EN/中文/日本語) + version bumps
2026-07-02 29f18c6  test(taskatlas): load SmokeFailedBumps fixture into the registry before smoke
2026-07-03 dc09f70  (tag: v0.34.0) release: v0.34.0 — vetted-toolset standing authority + bridge network fix
2026-07-03 421440e  (HEAD -> main, origin/main, origin/HEAD, claude/gallant-sanderson-832638) docs: fill v0.34.0 Win zip SHA-256 into release notes (all languages)
```
