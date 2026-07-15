---
title: "Tool Schemas JP"
language: "jp"
source_note: "Tool Schemas"
source_repo: "https://github.com/edwinmeng163-oss/UEAtelier"
source_branch: "main"
source_head: "6e7b775"
source_describe: "v0.35.0-1-g6e7b775"
generated: "2026-07-14"
---
# Tool Schemas JP

各ツールのトップレベル input schema 概要です。`*` は必須フィールドを示します。詳細は canonical registry JSON を参照してください。

## actors

| ツール | 必須フィールド | トップレベルプロパティ |
| --- | --- | --- |
| `unreal.actor_get_property` | `actorPath`, `propertyName` | `actorPath*`:string, `propertyName*`:string |
| `unreal.actor_get_transform` | `actorPath` | `actorPath*`:string, `space`:string |
| `unreal.actor_set_auto_possess` | `actorName` | `actorName*`:string, `autoPossessPlayer`:string |
| `unreal.batch_configure_static_mesh_actors` | - | `filter`:string, `classPath`:string, `paths`:array, `selectedOnly`:boolean, `limit`:number, `staticMeshPath`:string, `materialPath`:string, `materialSlot`:number |
| `unreal.batch_set_actor_properties` | - | - |
| `unreal.batch_set_actor_scale` | - | `filter`:string, `classPath`:string, `paths`:array, `selectedOnly`:boolean, `limit`:number, `scaleX`:number, `scaleY`:number, `scaleZ`:number |
| `unreal.batch_set_actor_tags` | - | `filter`:string, `classPath`:string, `paths`:array, `selectedOnly`:boolean, `limit`:number, `tags`:array, `replaceExisting`:boolean |
| `unreal.batch_set_point_light_properties` | - | `filter`:string, `classPath`:string, `paths`:array, `selectedOnly`:boolean, `limit`:number, `intensity`:number, `attenuationRadius`:number, `sourceRadius`:number, `softSourceRadius`:number, `temperature`:number, `useTemperature`:boolean, `castShadows`:boolean, `visible`:boolean |
| `unreal.clear_level_environment` | - | `filter`:string, `classPath`:string, `paths`:array, `dryRun`:boolean, `confirmClearAll`:boolean, `clearSelection`:boolean, `maxPasses`:number, `limit`:number |
| `unreal.destroy_selected_actors` | - | - |
| `unreal.layout_actors_circle` | - | `filter`:string, `classPath`:string, `paths`:array, `selectedOnly`:boolean, `limit`:number, `radius`:number, `startAngleDegrees`:number, `arcDegrees`:number, `centerX`:number, `centerY`:number, `centerZ`:number, `alignYawToCenter`:boolean, `yawOffset`:number |
| `unreal.layout_actors_grid` | - | `filter`:string, `classPath`:string, `paths`:array, `selectedOnly`:boolean, `limit`:number, `columns`:number, `spacingX`:number, `spacingY`:number, `spacingZ`:number, `startX`:number, `startY`:number, `startZ`:number, `pitch`:number, `yaw`:number, `roll`:number |
| `unreal.list_level_actors` | - | `filter`:string, `classPath`:string, `limit`:number |
| `unreal.list_selected_actors` | - | - |
| `unreal.select_actors` | - | `filter`:string, `classPath`:string, `paths`:array, `clearSelection`:boolean, `limit`:number |
| `unreal.set_actor_transform` | - | `actorPath`:string, `actorLabel`:string, `x`:number, `y`:number, `z`:number, `pitch`:number, `yaw`:number, `roll`:number |
| `unreal.spawn_actor` | - | - |
| `unreal.spawn_actor_basic` | - | `classPath`:string, `x`:number, `y`:number, `z`:number, `pitch`:number, `yaw`:number, `roll`:number, `sx`:number, `sy`:number, `sz`:number, `label`:string |
| `unreal.spawn_actor_batch` | - | - |
| `unreal.spawn_actor_batch_basic` | - | `classPath`:string, `selectSpawned`:boolean, `items`:array |
| `unreal.spawn_static_mesh_actor` | - | `x`:number, `y`:number, `z`:number, `pitch`:number, `yaw`:number, `roll`:number, `sx`:number, `sy`:number, `sz`:number, `label`:string, `staticMeshPath`:string, `materialPath`:string, `materialSlot`:number |

## blueprint

| ツール | 必須フィールド | トップレベルプロパティ |
| --- | --- | --- |
| `unreal.bp_add_branch_node` | - | `blueprintPath`:string, `graphName`:string, `x`:number, `y`:number |
| `unreal.bp_add_call_function_node` | - | `blueprintPath`:string, `graphName`:string, `functionClassPath`:string, `functionName`:string, `x`:number, `y`:number |
| `unreal.bp_add_component` | `blueprintPath`, `componentClass`, `componentName` | `blueprintPath*`:string, `componentClass*`:string, `componentName*`:string, `attachParentComponentName`:string |
| `unreal.bp_add_event_node` | - | `blueprintPath`:string, `graphName`:string, `eventName`:string, `ownerClassPath`:string, `x`:number, `y`:number |
| `unreal.bp_add_for_each_node` | - | `blueprintPath`:string, `graphName`:string, `macroName`:string, `x`:number, `y`:number |
| `unreal.bp_add_function` | - | `blueprintPath`:string, `functionName`:string |
| `unreal.bp_add_gameplay_node` | `blueprintPath`, `nodeKind` | `blueprintPath*`:string, `graphName`:string, `nodeKind*`:string, `x`:number, `y`:number |
| `unreal.bp_add_input_action_event_node` | `actionName`, `blueprintPath` | `blueprintPath*`:string, `graphName`:string, `actionName*`:string, `x`:number, `y`:number |
| `unreal.bp_add_input_axis_event_node` | `axisName`, `blueprintPath` | `blueprintPath*`:string, `graphName`:string, `axisName*`:string, `x`:number, `y`:number |
| `unreal.bp_add_macro_graph` | `blueprintPath`, `macroName` | `blueprintPath*`:string, `macroName*`:string |
| `unreal.bp_add_variable` | - | `blueprintPath`:string, `name`:string, `pinCategory`:string, `pinSubCategory`:string, `subCategoryObjectPath`:string, `containerType`:string, `defaultValue`:string |
| `unreal.bp_arrange_graph` | - | `blueprintPath`:string, `graphName`:string, `originX`:number, `originY`:number, `columnSpacing`:number, `rowSpacing`:number, `columns`:number |
| `unreal.bp_compile_save` | - | `blueprintPath`:string, `savePackage`:boolean |
| `unreal.bp_connect_pins` | - | `blueprintPath`:string, `graphName`:string, `fromNodeGuid`:string, `fromPin`:string, `toNodeGuid`:string, `toPin`:string |
| `unreal.bp_delete_function` | `blueprintPath`, `functionName` | `blueprintPath*`:string, `functionName*`:string |
| `unreal.bp_delete_macro_graph` | `blueprintPath`, `macroName` | `blueprintPath*`:string, `macroName*`:string, `force`:boolean |
| `unreal.bp_delete_node` | `blueprintPath`, `nodeGuid` | `blueprintPath*`:string, `graphName`:string, `nodeGuid*`:string |
| `unreal.bp_delete_variable` | `blueprintPath`, `variableName` | `blueprintPath*`:string, `variableName*`:string, `force`:boolean |
| `unreal.bp_interface_add` | `blueprintPath`, `interfacePath` | `blueprintPath*`:string, `interfacePath*`:string |
| `unreal.bp_interface_remove` | `blueprintPath`, `interfacePath` | `blueprintPath*`:string, `interfacePath*`:string, `preserveFunctions`:boolean |
| `unreal.bp_list_graph_nodes` | - | `blueprintPath`:string, `graphName`:string, `includePins`:boolean |
| `unreal.bp_rename_function` | `blueprintPath`, `newName`, `oldName` | `blueprintPath*`:string, `oldName*`:string, `newName*`:string |
| `unreal.bp_rename_variable` | `blueprintPath`, `newName`, `oldName` | `blueprintPath*`:string, `oldName*`:string, `newName*`:string |
| `unreal.bp_set_class_default` | `blueprintPath`, `propertyName`, `value` | `blueprintPath*`:string, `propertyName*`:string, `value*`:string |
| `unreal.bp_set_component_property` | `blueprintPath`, `componentName`, `propertyName`, `value` | `blueprintPath*`:string, `componentName*`:string, `propertyName*`:string, `value*`:string |
| `unreal.bp_set_pin_default` | - | `blueprintPath`:string, `graphName`:string, `nodeGuid`:string, `pinName`:string, `value`:string |
| `unreal.bp_trace_pin_connections` | - | `blueprintPath`:string, `graphName`:string, `nodeGuid`:string, `pinName`:string |
| `unreal.compile_blueprint` | - | `path`:string |
| `unreal.compile_blueprints_in_path` | - | `path`:string, `recursive`:boolean, `limit`:number |
| `unreal.create_blueprint_class` | - | `assetPath`:string, `parentClass`:string, `openAfterCreate`:boolean, `compile`:boolean |

## code

| ツール | 必須フィールド | トップレベルプロパティ |
| --- | --- | --- |
| `unreal.code_apply_change` | `previewId` | `previewId*`:string, `dryRun`:boolean, `confirmHighRisk`:boolean, `expectedSha256PerFile`:object |
| `unreal.code_list_files` | - | `scope`:string, `extensions`:array, `glob`:string, `maxResults`:number |
| `unreal.code_preview_change` | `edits` | `edits*`:array |
| `unreal.code_read_file` | `path` | `path*`:string, `startLine`:number, `lineCount`:number, `maxChars`:number |
| `unreal.code_rollback_change` | - | `editId`:string, `manifestPath`:string, `dryRun`:boolean, `force`:boolean |
| `unreal.code_search` | `query` | `query*`:string, `mode`:string, `scope`:string, `extensions`:array, `contextLines`:number, `maxMatches`:number |
| `unreal.code_workspace_status` | - | - |

## editor

| ツール | 必須フィールド | トップレベルプロパティ |
| --- | --- | --- |
| `unreal.asset_move` | `destinationPath`, `sourcePath` | `sourcePath*`:string, `destinationPath*`:string, `createRedirector`:boolean, `dryRun`:boolean |
| `unreal.chat_history_tail` | - | `count`:integer, `sessionId`:string |
| `unreal.chat_inject_user_input` | `text` | `text*`:string, `sessionId`:string, `dryRun`:boolean |
| `unreal.chat_tool_log_tail` | - | `count`:integer, `sessionId`:string |
| `unreal.configure_player_input` | - | `inputSystem`:string, `profile`:string, `mappings`:object, `enhancedInputMappingContextPath`:string, `dryRun`:boolean |
| `unreal.dependency_remap` | `fromAssetPath`, `toAssetPath` | `fromAssetPath*`:string, `toAssetPath*`:string, `dryRun`:boolean, `deleteSourceAfter`:boolean |
| `unreal.editor.engine_version` | - | - |
| `unreal.editor.python_runtime_info` | - | - |
| `unreal.editor_set_map_game_mode` | `gameModeClassPath` | `gameModeClassPath*`:string, `scope`:string |
| `unreal.editor_status` | - | - |
| `unreal.execute_console_command` | - | `command`:string, `target`:string |
| `unreal.execute_python` | - | `command`:string, `mode`:string, `scope`:string, `autoMode`:boolean, `forceEnable`:boolean, `unattended`:boolean |
| `unreal.execute_python_file` | - | `scriptPath`:string, `args`:array, `scope`:string, `forceEnable`:boolean, `unattended`:boolean, `allowOutsideProject`:boolean |
| `unreal.list_assets` | - | `path`:string, `recursive`:boolean, `classPath`:string, `limit`:number |
| `unreal.list_maps` | - | - |
| `unreal.list_selected_assets` | - | - |
| `unreal.map_check` | - | - |
| `unreal.open_asset` | - | `path`:string |
| `unreal.open_map` | - | `path`:string |
| `unreal.project_settings_get` | `category`, `key` | `category*`:string, `key*`:string, `effective`:boolean |
| `unreal.project_version_migration` | `targetEngineVersion` | `targetEngineVersion*`:string, `dryRun`:boolean, `projectFilePath`:string |
| `unreal.redirector_fixup` | - | `path`:string, `dryRun`:boolean, `recursive`:boolean, `failOnAnyError`:boolean |
| `unreal.save_dirty_packages` | - | `saveMaps`:boolean, `saveAssets`:boolean |
| `unreal.start_pie` | - | `simulate`:boolean |
| `unreal.stop_pie` | - | - |
| `unreal.sync_content_browser` | - | `path`:string |
| `unreal.tail_log` | - | `lines`:number, `contains`:string |

## material

| ツール | 必須フィールド | トップレベルプロパティ |
| --- | --- | --- |
| `unreal.material_instance_get_parameters` | `materialInstancePath` | `materialInstancePath*`:string, `includeInherited`:boolean |
| `unreal.material_instance_list` | - | `contentRoot`:string, `recursive`:boolean, `classFilter`:string, `limit`:number |
| `unreal.material_instance_set_scalar` | `materialInstancePath`, `parameterName`, `value` | `materialInstancePath*`:string, `parameterName*`:string, `value*`:number, `save`:boolean |
| `unreal.material_instance_set_vector` | `materialInstancePath`, `parameterName`, `value` | `materialInstancePath*`:string, `parameterName*`:string, `value*`:object, `save`:boolean |

## memory

| ツール | 必須フィールド | トップレベルプロパティ |
| --- | --- | --- |
| `unreal.project_memory_delete` | - | `key`:string, `dryRun`:boolean |
| `unreal.project_memory_edit` | - | `key`:string, `summary`:string, `status`:string, `nextStep`:string, `contentJson`:string, `contentMode`:string, `tags`:array, `tagsMode`:string, `createIfMissing`:boolean, `dryRun`:boolean |
| `unreal.project_memory_read` | - | `key`:string, `includeContent`:boolean |
| `unreal.project_memory_view` | - | `keyFilter`:string, `status`:string, `tag`:string, `includeContent`:boolean, `maxEntries`:number, `sortDescending`:boolean |
| `unreal.project_memory_write` | - | `key`:string, `summary`:string, `status`:string, `nextStep`:string, `contentJson`:string, `tags`:array |

## scaffold

| ツール | 必須フィールド | トップレベルプロパティ |
| --- | --- | --- |
| `unreal.scaffold_autobattler_ai` | - | - |
| `unreal.scaffold_economy_system` | - | - |
| `unreal.scaffold_mcp_tool` | - | `toolName`:string, `title`:string, `description`:string, `outputRoot`:string, `argumentSchemaJson`:string, `exampleArgumentsJson`:string, `implementationNotes`:string, `implementationTrack`:string, `category`:string, `riskLevel`:string, `requiresWrite`:boolean, `requiresBuild`:boolean, `requiresExternalProcess`:boolean, `requiresRestart`:boolean, `requiresProjectMemory`:boolean, `requiresLock`:boolean, `dryRunSupport`:boolean, `overwrite`:boolean, `includeChatCommandSnippet`:boolean, `includeLegacyCompatibility`:boolean |
| `unreal.scaffold_recipe` | - | `recipeName`:string, `rootPath`:string, `taskName`:string, `writeMemory`:boolean, `memoryKey`:string, `includeToolCalls`:boolean |
| `unreal.scaffold_result_ui` | - | - |
| `unreal.scaffold_round_system` | - | - |
| `unreal.scaffold_shop_system` | - | - |

## self-extension

| ツール | 必須フィールド | トップレベルプロパティ |
| --- | --- | --- |
| `unreal.capture_project_snapshot` | - | `snapshotName`:string, `assetPath`:string, `includeActors`:boolean, `includeAssets`:boolean, `includeBlueprints`:boolean, `includeWidgets`:boolean, `includeMemory`:boolean, `includeSkills`:boolean, `actorLimit`:number, `assetLimit`:number |
| `unreal.diff_project_snapshot` | - | `beforeSnapshotPath`:string, `afterSnapshotPath`:string |
| `unreal.install_doctor` | - | `includeDetails`:boolean, `refresh`:boolean, `deepScanEnginePlugins`:boolean |
| `unreal.knowledge_eval_run` | - | `evalPath`:string, `indexRoot`:string, `refreshIndex`:boolean, `includeDetails`:boolean, `limit`:number |
| `unreal.knowledge_index_refresh` | - | `sourceRoot`:string, `indexRoot`:string, `includeOfficialDocs`:boolean, `includePromotedSources`:boolean, `includeVersionedDocs`:boolean, `includeToolRegistry`:boolean, `includeActivityLog`:boolean, `includeSkills`:boolean, `allowEmptyIndex`:boolean, `skipLowContent`:boolean, `maxCards`:number, `maxChunkChars`:number, `chunkOverlapChars`:number, `dryRun`:boolean |
| `unreal.knowledge_search` | - | `query`:string, `categories`:array, `sourceKinds`:array, `groupByKind`:boolean, `indexRoot`:string, `limit`:number, `maxExcerptChars`:number, `includeText`:boolean |
| `unreal.mcp_apply_scaffold` | - | `toolName`:string, `scaffoldDir`:string, `outputRoot`:string, `dryRun`:boolean, `applyChatCommand`:boolean, `createBackup`:boolean, `validatePatches`:boolean, `allowUnsafePatches`:boolean, `targetDiffPreviewLines`:number |
| `unreal.mcp_backup_project_state` | - | `label`:string, `reason`:string, `includeSource`:boolean, `includeReadmes`:boolean, `includeProjectMemory`:boolean, `includeManifests`:boolean, `includeBuildLogs`:boolean, `dryRun`:boolean |
| `unreal.mcp_build_client` | - | `target`:string, `platform`:string, `configuration`:string, `extraArgs`:string, `toolName`:string, `testRequestPath`:string, `testsDir`:string, `scaffoldDir`:string, `memoryKey`:string, `writeProjectMemory`:boolean |
| `unreal.mcp_build_editor` | - | `target`:string, `platform`:string, `configuration`:string, `extraArgs`:string, `toolName`:string, `testRequestPath`:string, `testsDir`:string, `scaffoldDir`:string, `memoryKey`:string, `writeProjectMemory`:boolean |
| `unreal.mcp_build_game` | - | `target`:string, `platform`:string, `configuration`:string, `extraArgs`:string, `toolName`:string, `testRequestPath`:string, `testsDir`:string, `scaffoldDir`:string, `memoryKey`:string, `writeProjectMemory`:boolean |
| `unreal.mcp_build_packaged` | - | `platform`:string, `targetPlatform`:string, `configuration`:string, `extraArgs`:string, `outputDirectory`:string, `map`:string, `memoryKey`:string, `writeProjectMemory`:boolean |
| `unreal.mcp_build_server` | - | `target`:string, `platform`:string, `configuration`:string, `extraArgs`:string, `toolName`:string, `testRequestPath`:string, `testsDir`:string, `scaffoldDir`:string, `memoryKey`:string, `writeProjectMemory`:boolean |
| `unreal.mcp_classify_error` | - | `text`:string, `logPath`:string, `tailLines`:number |
| `unreal.mcp_clean_test_artifacts` | - | `dryRun`:boolean, `cleanTestScaffolds`:boolean, `cleanTestRequests`:boolean, `cleanBuildLogs`:boolean, `cleanExtensionBackups`:boolean, `cleanProjectMemory`:boolean, `maxAgeDays`:number, `nameContains`:string |
| `unreal.mcp_compile_error_fix_plan` | - | `buildLogPath`:string, `maxErrors`:number, `contextLines`:number, `includeSourceContext`:boolean, `autoPatch`:boolean, `dryRun`:boolean |
| `unreal.mcp_diff_last_apply` | - | `manifestPath`:string, `maxPreviewLines`:number, `includeFullText`:boolean |
| `unreal.mcp_extension_pipeline` | - | `mode`:string, `toolName`:string, `scaffoldDir`:string, `outputRoot`:string, `schemaJson`:string, `testRequestPath`:string, `testsDir`:string, `memoryKey`:string, `task`:string, `apply`:boolean, `build`:boolean, `runTest`:boolean, `runTestSuite`:boolean, `generateTests`:boolean, `overwriteTests`:boolean, `dryRunOnly`:boolean, `applyChatCommand`:boolean, `createBackup`:boolean, `backupProjectState`:boolean, `writeProjectMemory`:boolean, `enforceGate`:boolean, `captureSnapshots`:boolean, `verifyOutcome`:boolean, `classifyFailures`:boolean |
| `unreal.mcp_generate_tests` | - | `toolName`:string, `scaffoldDir`:string, `testsDir`:string, `outputRoot`:string, `schemaJson`:string, `overwrite`:boolean, `dryRun`:boolean |
| `unreal.mcp_inspect_scaffold` | - | `toolName`:string, `scaffoldDir`:string, `outputRoot`:string, `includeFileText`:boolean, `maxPreviewChars`:number |
| `unreal.mcp_list_scaffolds` | - | `outputRoot`:string, `includeSavedTestScaffolds`:boolean, `toolNameFilter`:string, `readyOnly`:boolean, `includeFileText`:boolean, `maxPreviewChars`:number |
| `unreal.mcp_lock_extension_session` | - | `mode`:string, `sessionId`:string, `owner`:string, `reason`:string, `ttlSeconds`:number, `force`:boolean |
| `unreal.mcp_patch_scaffold_patch` | - | `toolName`:string, `scaffoldDir`:string, `outputRoot`:string, `patchName`:string, `snippetName`:string, `mode`:string, `newText`:string, `findText`:string, `replaceText`:string, `appendText`:string, `prependText`:string, `replaceAll`:boolean, `dryRun`:boolean, `createBackup`:boolean, `allowUnsafe`:boolean, `diffPreviewLines`:number |
| `unreal.mcp_patch_scaffold_snippet` | - | - |
| `unreal.mcp_pipeline_status` | - | `memoryKey`:string, `includeAllMemory`:boolean, `includeBuildLogTail`:boolean, `buildLogTailLines`:number |
| `unreal.mcp_prepare_test_sandbox` | - | `contentPath`:string, `reset`:boolean, `resetActors`:boolean, `actorLabelPrefix`:string, `dryRun`:boolean |
| `unreal.mcp_rollback_last_extension` | - | `manifestPath`:string, `dryRun`:boolean, `force`:boolean |
| `unreal.mcp_rollback_to_manifest` | - | `manifestPath`:string, `toolName`:string, `selector`:string, `manifestIndex`:number, `dryRun`:boolean, `force`:boolean, `createPreRollbackBackup`:boolean |
| `unreal.mcp_run_test_suite` | - | `toolName`:string, `testsDir`:string, `scaffoldDir`:string, `outputRoot`:string, `memoryKey`:string, `readProjectMemory`:boolean, `writeProjectMemory`:boolean, `executeTool`:boolean, `stopOnFailure`:boolean, `fallbackToSingleTest`:boolean, `includePassedStructuredContent`:boolean |
| `unreal.mcp_run_tool_test` | - | `toolName`:string, `testRequestPath`:string, `testsDir`:string, `scaffoldDir`:string, `outputRoot`:string, `memoryKey`:string, `readProjectMemory`:boolean, `writeProjectMemory`:boolean, `expectToolListed`:boolean, `executeTool`:boolean, `runSuite`:boolean |
| `unreal.mcp_supervisor_install` | - | `platform`:string, `outputDir`:string, `label`:string, `memoryKey`:string, `argsJson`:string, `endpointUrl`:string, `supervisorLogDir`:string, `editorCmd`:string, `installLaunchAgent`:boolean, `launchAtLoad`:boolean, `autoRestart`:boolean, `overwrite`:boolean, `dryRun`:boolean |
| `unreal.mcp_tool_audit` | - | - |
| `unreal.mcp_user_registry_reload` | - | `acceptChangedHashes`:boolean, `dryRun`:boolean |
| `unreal.mcp_user_tool_smoke` | `toolName` | `toolName*`:string, `dryRunArgs`:string, `timeoutSeconds`:number |
| `unreal.mcp_validate_cpp_patch` | - | `patchText`:string, `patchName`:string, `snippetText`:string, `snippetName`:string, `toolName`:string, `scaffoldDir`:string, `outputRoot`:string |
| `unreal.mcp_validate_cpp_snippet` | - | - |
| `unreal.mcp_validate_tool_schema` | - | `toolName`:string, `schemaJson`:string, `returnNormalizedSchema`:boolean |
| `unreal.mcp_workbench_status` | - | `memoryKey`:string, `includeBuildLogTail`:boolean, `buildLogTailLines`:number |
| `unreal.preview_change_plan` | - | `task`:string |
| `unreal.tool_gap_analyze` | - | `task`:string, `riskMax`:string, `limit`:number |
| `unreal.tool_recommend` | - | `task`:string, `indexRoot`:string, `riskMax`:string, `limit`:number, `includeKnowledge`:boolean, `includeWorkflowDraft`:boolean |
| `unreal.tools.export_package` | `toolName` | `toolName*`:string, `version`:string, `packagePath`:string, `scaffoldDir`:string, `outputRoot`:string, `dryRun`:boolean, `allowRegistryOnly`:boolean |
| `unreal.tools.import_package` | `packagePath` | `packagePath*`:string, `dryRun`:boolean, `overwriteScaffold`:boolean, `acceptRegistryOnly`:boolean, `skipLock`:boolean |
| `unreal.tools.list_exportable` | - | - |
| `unreal.user_registry_introspect` | - | `includeToolJson`:boolean, `includePythonSha`:boolean, `toolName`:string |
| `unreal.verify_task_outcome` | - | `task`:string, `beforeSnapshotPath`:string, `afterSnapshotPath`:string, `expectedChangedAreas`:array, `expectedTools`:array, `evidenceText`:string, `requiredEvidenceText`:string |
| `unreal.workflow_recommend` | - | `task`:string, `riskMax`:string, `limit`:number, `includeKnowledge`:boolean, `dryRun`:boolean |
| `unreal.workflow_run` | - | `workflowName`:string, `workflowJson`:string, `workflowPath`:string, `steps`:array, `dryRun`:boolean, `stopOnFailure`:boolean, `maxSteps`:number, `writeMemory`:boolean, `memoryKey`:string, `allowHighRisk`:boolean, `allowCritical`:boolean, `includeStepStructuredContent`:boolean, `maxResultChars`:number |

## skills

| ツール | 必須フィールド | トップレベルプロパティ |
| --- | --- | --- |
| `unreal.chat_label_active_task` | - | `label`:string |
| `unreal.skill_activity_status` | - | `includeRecentEvents`:boolean, `maxEvents`:number |
| `unreal.skill_apply` | - | `skillName`:string, `skillPath`:string, `roots`:array, `task`:string, `memoryKey`:string, `writeMemory`:boolean, `includeFullText`:boolean |
| `unreal.skill_distill_from_activity` | - | `sessionId`:string, `skillName`:string, `title`:string, `goal`:string, `writeDraft`:boolean, `includeEvents`:boolean, `overwrite`:boolean, `maxEvents`:number |
| `unreal.skill_list` | - | `roots`:array, `nameFilter`:string, `includeText`:boolean, `maxPreviewChars`:number |
| `unreal.skill_promote_draft` | - | `skillName`:string, `draftPath`:string, `overwrite`:boolean, `dryRun`:boolean, `createBackup`:boolean |
| `unreal.skill_read` | - | `skillName`:string, `skillPath`:string, `roots`:array, `includeText`:boolean, `maxPreviewChars`:number |
| `unreal.skill_recording_start` | - | `goal`:string, `sessionId`:string, `recordIntervalSeconds`:number, `reset`:boolean |
| `unreal.skill_recording_stop` | - | `reason`:string |
| `unreal.skill_save_draft` | - | `skillName`:string, `title`:string, `goal`:string, `summary`:string, `draftText`:string, `overwrite`:boolean |

## task-atlas

| ツール | 必須フィールド | トップレベルプロパティ |
| --- | --- | --- |
| `unreal.activity_log_annotate` | `content`, `kind` | `kind*`:string, `content*`:string, `sessionId`:string |
| `unreal.task_atlas_delete_made_tool` | `confirm`, `toolName` | `toolName*`:string, `confirm*`:boolean, `dryRun`:boolean |
| `unreal.task_atlas_list_made_tools` | - | `includeStale`:boolean, `includeFailureMarkers`:boolean, `sourceTaskId`:string |
| `unreal.task_atlas_make_composite` | `taskId` | `taskId*`:string, `preferDocumentOnly`:boolean, `forceWriteEvenIfBlocked`:boolean, `overrideStepArgs`:array |
| `unreal.task_atlas_promote_to_rag` | `taskId` | `taskId*`:string, `dryRun`:boolean, `refreshIndex`:boolean |
| `unreal.task_atlas_smoke_made_tool` | `toolName` | `toolName*`:string, `dryRun`:boolean, `acceptChangedHashes`:boolean |
| `unreal.task_describe` | `taskId` | `taskId*`:string |
| `unreal.task_label_backfill` | - | `sessionId`:string, `limit`:number, `force`:boolean, `dryRun`:boolean |
| `unreal.task_list` | - | `filter`:string, `limit`:number |
| `unreal.task_pin` | `pinned`, `taskId` | `taskId*`:string, `pinned*`:boolean |
| `unreal.task_rate` | `rating`, `taskId` | `taskId*`:string, `rating*`:string |

## verification

| ツール | 必須フィールド | トップレベルプロパティ |
| --- | --- | --- |
| `unreal.automation_list` | - | `filter`:string, `includeDetails`:boolean, `limit`:number |
| `unreal.automation_report` | `runId` | `runId*`:string |
| `unreal.automation_run` | `fullName` | `fullName*`:string, `timeoutSeconds`:number, `tags`:array |
| `unreal.editor_diagnostics` | - | `since`:string, `classes`:array, `limit`:number |
| `unreal.pie_input_probe` | `action` | `action*`:string, `inputProfile`:string, `durationSeconds`:number, `probeId`:string |
| `unreal.pie_smoke` | - | `mapPath`:string, `timeoutSeconds`:number, `aliveWindowSeconds`:number |
| `unreal.verify_player_controls` | - | `expectedPawnClass`:string, `startIfNeeded`:boolean, `stopAfter`:boolean |
| `unreal.verify_viewport_widgets` | - | `widgetClassFilter`:string |

## widget

| ツール | 必須フィールド | トップレベルプロパティ |
| --- | --- | --- |
| `unreal.widget_add` | - | `widgetBlueprintPath`:string, `parentWidgetName`:string, `widgetName`:string, `widgetClass`:string, `index`:number, `isVariable`:boolean |
| `unreal.widget_bind_blueprint_variable` | - | `widgetBlueprintPath`:string, `widgetName`:string, `variableName`:string, `expose`:boolean, `compile`:boolean |
| `unreal.widget_bind_event` | - | `widgetBlueprintPath`:string, `widgetName`:string, `eventName`:string, `functionName`:string, `x`:number, `y`:number, `compile`:boolean |
| `unreal.widget_build_template` | - | `widgetBlueprintPath`:string, `templateName`:string, `title`:string, `replaceRoot`:boolean, `compile`:boolean, `savePackage`:boolean |
| `unreal.widget_delete` | `widgetBlueprintPath`, `widgetName` | `widgetBlueprintPath*`:string, `widgetName*`:string, `force`:boolean |
| `unreal.widget_dump_tree` | - | `widgetBlueprintPath`:string, `includeDesignerTree`:boolean, `includeGraphNodes`:boolean |
| `unreal.widget_duplicate` | `sourceName`, `widgetBlueprintPath` | `widgetBlueprintPath*`:string, `sourceName*`:string, `newName`:string, `includeSubtree`:boolean |
| `unreal.widget_remove` | - | `widgetBlueprintPath`:string, `widgetName`:string |
| `unreal.widget_rename` | `newName`, `oldName`, `widgetBlueprintPath` | `widgetBlueprintPath*`:string, `oldName*`:string, `newName*`:string, `force`:boolean |
| `unreal.widget_reorder_child` | `newIndex`, `widgetBlueprintPath`, `widgetName` | `widgetBlueprintPath*`:string, `widgetName*`:string, `newIndex*`:number |
| `unreal.widget_set_property` | - | `widgetBlueprintPath`:string, `widgetName`:string, `propertyName`:string, `value`:string |
| `unreal.widget_set_slot_layout` | - | `widgetBlueprintPath`:string, `widgetName`:string, `x`:number, `y`:number, `width`:number, `height`:number, `autoSize`:boolean, `zOrder`:number, `alignmentX`:number, `alignmentY`:number, `anchorMinX`:number, `anchorMinY`:number, `anchorMaxX`:number, `anchorMaxY`:number, `paddingLeft`:number, `paddingTop`:number, `paddingRight`:number, `paddingBottom`:number, `hAlign`:string, `vAlign`:string, `sizeRule`:string, `sizeValue`:number |

Full EN/source page: [[Tool Schemas]]
