---
title: "Tool Library JP"
language: "jp"
source_note: "Tool Library"
source_repo: "https://github.com/edwinmeng163-oss/UEAtelier"
source_branch: "main"
source_head: "6e7b775"
source_describe: "v0.35.0-1-g6e7b775"
generated: "2026-07-14"
---
# Tool Library JP

この一覧は ToolRegistry から生成した全 190 ツールの日本語索引です。ツール名と title は canonical source identifier として原文のままです。

## Summary

| Metric | Value |
| --- | --- |
| Total | 190 |
| Visible | 178 |
| Legacy hidden | 12 |

## Category Counts

| カテゴリ | Count |
| --- | ---: |
| actors | 21 |
| blueprint | 30 |
| code | 7 |
| editor | 27 |
| material | 4 |
| memory | 5 |
| scaffold | 7 |
| self-extension | 48 |
| skills | 10 |
| task-atlas | 11 |
| verification | 8 |
| widget | 12 |

## Risk Counts

| リスク | Count |
| --- | ---: |
| critical | 5 |
| high | 25 |
| low | 27 |
| medium | 82 |
| read_only | 51 |

## All Tools

### actors

| ツール | Title | 公開状態 | リスク | 書込 | Dry Run | ガード | テスト |
| --- | --- | --- | --- | --- | --- | --- | --- |
| `unreal.actor_get_property` | Get Actor Property | visible | low | いいえ | いいえ | - | core |
| `unreal.actor_get_transform` | Get Actor Transform | visible | low | いいえ | いいえ | - | core |
| `unreal.actor_set_auto_possess` | Set Actor Auto Possess | visible | medium | はい | いいえ | pre, post | core |
| `unreal.batch_configure_static_mesh_actors` | Configure Static Mesh Actors | visible | medium | はい | いいえ | pre, post | missing |
| `unreal.batch_set_actor_properties` | Batch Set Actor Properties | legacy_hidden | medium | はい | いいえ | pre, post | missing |
| `unreal.batch_set_actor_scale` | Batch Set Actor Scale | visible | medium | はい | いいえ | pre, post | missing |
| `unreal.batch_set_actor_tags` | Batch Set Actor Tags | visible | medium | はい | いいえ | pre, post | missing |
| `unreal.batch_set_point_light_properties` | Batch Set Point Lights | visible | medium | はい | いいえ | pre, post | missing |
| `unreal.clear_level_environment` | Clear Level Environment | visible | high | はい | はい | pre, post | category |
| `unreal.destroy_selected_actors` | Destroy Selected Actors | visible | high | はい | いいえ | pre, post | missing |
| `unreal.layout_actors_circle` | Layout Actors In Circle | visible | medium | はい | いいえ | pre, post | missing |
| `unreal.layout_actors_grid` | Layout Actors In Grid | visible | medium | はい | いいえ | pre, post | missing |
| `unreal.list_level_actors` | List Level Actors | visible | read_only | いいえ | いいえ | - | missing |
| `unreal.list_selected_actors` | List Selected Actors | visible | read_only | いいえ | いいえ | - | missing |
| `unreal.select_actors` | Select Actors | visible | low | いいえ | いいえ | - | category |
| `unreal.set_actor_transform` | Set Actor Transform | visible | medium | はい | いいえ | pre, post | missing |
| `unreal.spawn_actor` | Spawn Actor | legacy_hidden | medium | はい | いいえ | pre, post | missing |
| `unreal.spawn_actor_basic` | Spawn Actor (Basic) | visible | medium | はい | いいえ | pre, post | missing |
| `unreal.spawn_actor_batch` | Spawn Actor Batch | legacy_hidden | medium | はい | いいえ | pre, post | missing |
| `unreal.spawn_actor_batch_basic` | Spawn Actor Batch (Basic) | visible | medium | はい | いいえ | pre, post | missing |
| `unreal.spawn_static_mesh_actor` | Spawn Static Mesh Actor | visible | medium | はい | いいえ | pre, post | category |

### blueprint

| ツール | Title | 公開状態 | リスク | 書込 | Dry Run | ガード | テスト |
| --- | --- | --- | --- | --- | --- | --- | --- |
| `unreal.bp_add_branch_node` | Add Branch Node | visible | medium | はい | いいえ | pre, post | missing |
| `unreal.bp_add_call_function_node` | Add Function Call Node | visible | medium | はい | いいえ | pre, post | missing |
| `unreal.bp_add_component` | Add Blueprint Component | visible | medium | はい | いいえ | pre, post | core |
| `unreal.bp_add_event_node` | Add Event Node | visible | medium | はい | いいえ | pre, post | missing |
| `unreal.bp_add_for_each_node` | Add ForEach Node | visible | medium | はい | いいえ | pre, post | missing |
| `unreal.bp_add_function` | Add Blueprint Function | visible | medium | はい | いいえ | pre, post | missing |
| `unreal.bp_add_gameplay_node` | Add Blueprint Gameplay Node | visible | medium | はい | いいえ | pre, post | core |
| `unreal.bp_add_input_action_event_node` | Add Input Action Event Node | visible | medium | はい | いいえ | pre, post | core |
| `unreal.bp_add_input_axis_event_node` | Add Input Axis Event Node | visible | medium | はい | いいえ | pre, post | core |
| `unreal.bp_add_macro_graph` | Add Blueprint Macro Graph | visible | low | はい | いいえ | pre, post | core |
| `unreal.bp_add_variable` | Add Blueprint Variable | visible | medium | はい | いいえ | pre, post | category |
| `unreal.bp_arrange_graph` | Arrange Blueprint Graph | visible | medium | はい | いいえ | pre, post | missing |
| `unreal.bp_compile_save` | Compile And Save Blueprint | visible | medium | はい | いいえ | pre, post | category |
| `unreal.bp_connect_pins` | Connect Blueprint Pins | visible | medium | はい | いいえ | pre, post | category |
| `unreal.bp_delete_function` | Delete Blueprint Function | visible | low | はい | いいえ | pre, post | core |
| `unreal.bp_delete_macro_graph` | Delete Blueprint Macro Graph | visible | medium | はい | いいえ | pre, post | core |
| `unreal.bp_delete_node` | Delete Blueprint Node | visible | low | はい | いいえ | pre, post | core |
| `unreal.bp_delete_variable` | Delete Blueprint Variable | visible | low | はい | いいえ | pre, post | core |
| `unreal.bp_interface_add` | Add Blueprint Interface | visible | medium | はい | いいえ | pre, post | core |
| `unreal.bp_interface_remove` | Remove Blueprint Interface | visible | medium | はい | いいえ | pre, post | core |
| `unreal.bp_list_graph_nodes` | List Blueprint Graph Nodes | visible | read_only | いいえ | いいえ | - | category |
| `unreal.bp_rename_function` | Rename Blueprint Function | visible | medium | はい | いいえ | pre, post | core |
| `unreal.bp_rename_variable` | Rename Blueprint Variable | visible | medium | はい | いいえ | pre, post | core |
| `unreal.bp_set_class_default` | Set Blueprint Class Default | visible | medium | はい | いいえ | pre, post | core |
| `unreal.bp_set_component_property` | Set Blueprint Component Property | visible | medium | はい | いいえ | pre, post | core |
| `unreal.bp_set_pin_default` | Set Blueprint Pin Default | visible | medium | はい | いいえ | pre, post | missing |
| `unreal.bp_trace_pin_connections` | Trace Blueprint Pin Connections | visible | read_only | いいえ | いいえ | - | category |
| `unreal.compile_blueprint` | Compile Blueprint | visible | medium | いいえ | いいえ | - | missing |
| `unreal.compile_blueprints_in_path` | Compile Blueprints In Path | visible | medium | いいえ | いいえ | - | missing |
| `unreal.create_blueprint_class` | Create Blueprint Class | visible | medium | はい | いいえ | pre, post | category |

### code

| ツール | Title | 公開状態 | リスク | 書込 | Dry Run | ガード | テスト |
| --- | --- | --- | --- | --- | --- | --- | --- |
| `unreal.code_apply_change` | Apply Code Change | visible | high | はい | はい | pre, post, lock | missing |
| `unreal.code_list_files` | List Code Files | visible | read_only | いいえ | いいえ | - | category |
| `unreal.code_preview_change` | Preview Code Change | visible | low | いいえ | いいえ | pre | missing |
| `unreal.code_read_file` | Read Code File | visible | read_only | いいえ | いいえ | - | category |
| `unreal.code_rollback_change` | Rollback Code Change | visible | high | はい | はい | pre, post, lock | missing |
| `unreal.code_search` | Search Code | visible | read_only | いいえ | いいえ | - | category |
| `unreal.code_workspace_status` | Code Workspace Status | visible | read_only | いいえ | いいえ | - | category |

### editor

| ツール | Title | 公開状態 | リスク | 書込 | Dry Run | ガード | テスト |
| --- | --- | --- | --- | --- | --- | --- | --- |
| `unreal.asset_move` | Move Asset | visible | medium | はい | はい | pre, post | core |
| `unreal.chat_history_tail` | Tail Chat Panel History | visible | read_only | いいえ | いいえ | - | category |
| `unreal.chat_inject_user_input` | Inject Chat Panel User Input | visible | medium | はい | はい | pre, post, lock | category |
| `unreal.chat_tool_log_tail` | Tail Chat Tool Log | visible | read_only | いいえ | いいえ | - | category |
| `unreal.configure_player_input` | Configure Player Input | visible | medium | はい | はい | pre, post | category |
| `unreal.dependency_remap` | Remap Asset Dependencies | visible | high | はい | はい | pre, post | core |
| `unreal.editor.engine_version` | Editor Engine Version | visible | read_only | いいえ | いいえ | - | core |
| `unreal.editor.python_runtime_info` | Editor Python Runtime Info | visible | critical | いいえ | いいえ | process | manual |
| `unreal.editor_set_map_game_mode` | Set Map GameMode | visible | medium | はい | いいえ | pre, post | core |
| `unreal.editor_status` | Editor Status | visible | read_only | いいえ | いいえ | - | core |
| `unreal.execute_console_command` | Execute Console Command | visible | critical | はい | いいえ | pre, post | missing |
| `unreal.execute_python` | Execute Python | visible | critical | はい | いいえ | pre, post | missing |
| `unreal.execute_python_file` | Execute Python File | visible | critical | はい | いいえ | pre, post, process | missing |
| `unreal.list_assets` | List Assets | visible | read_only | いいえ | いいえ | - | missing |
| `unreal.list_maps` | List Maps | visible | read_only | いいえ | いいえ | - | missing |
| `unreal.list_selected_assets` | List Selected Assets | visible | read_only | いいえ | いいえ | - | missing |
| `unreal.map_check` | Map Check | visible | read_only | いいえ | いいえ | - | missing |
| `unreal.open_asset` | Open Asset | visible | low | いいえ | いいえ | - | missing |
| `unreal.open_map` | Open Map | visible | low | いいえ | いいえ | - | missing |
| `unreal.project_settings_get` | Get Project Setting | visible | low | いいえ | いいえ | - | core |
| `unreal.project_version_migration` | Project Version Migration | visible | high | はい | はい | pre, post | core |
| `unreal.redirector_fixup` | Fix Up Redirectors | visible | high | はい | はい | pre, post | core |
| `unreal.save_dirty_packages` | Save Dirty Packages | visible | medium | はい | いいえ | pre, post | missing |
| `unreal.start_pie` | Start PIE | visible | low | いいえ | いいえ | - | missing |
| `unreal.stop_pie` | Stop PIE | visible | low | いいえ | いいえ | - | missing |
| `unreal.sync_content_browser` | Sync Content Browser | visible | low | いいえ | いいえ | - | missing |
| `unreal.tail_log` | Tail Editor Log | visible | read_only | いいえ | いいえ | - | missing |

### material

| ツール | Title | 公開状態 | リスク | 書込 | Dry Run | ガード | テスト |
| --- | --- | --- | --- | --- | --- | --- | --- |
| `unreal.material_instance_get_parameters` | Get Material Parameters | visible | read_only | いいえ | いいえ | - | category |
| `unreal.material_instance_list` | List Material Instances | visible | read_only | いいえ | いいえ | - | category |
| `unreal.material_instance_set_scalar` | Set Material Scalar | visible | medium | はい | いいえ | pre, post | category |
| `unreal.material_instance_set_vector` | Set Material Vector | visible | medium | はい | いいえ | pre, post | category |

### memory

| ツール | Title | 公開状態 | リスク | 書込 | Dry Run | ガード | テスト |
| --- | --- | --- | --- | --- | --- | --- | --- |
| `unreal.project_memory_delete` | Delete Project Memory Entry | visible | medium | はい | はい | pre, post, memory | missing |
| `unreal.project_memory_edit` | Edit Project Memory Entry | visible | medium | はい | はい | pre, post, memory | missing |
| `unreal.project_memory_read` | Read Project Memory Entry | visible | read_only | いいえ | いいえ | - | missing |
| `unreal.project_memory_view` | View Project Memory | visible | read_only | いいえ | いいえ | - | missing |
| `unreal.project_memory_write` | Write Project Memory Entry | visible | medium | はい | いいえ | pre, post, memory | missing |

### scaffold

| ツール | Title | 公開状態 | リスク | 書込 | Dry Run | ガード | テスト |
| --- | --- | --- | --- | --- | --- | --- | --- |
| `unreal.scaffold_autobattler_ai` | Scaffold Autobattler AI | legacy_hidden | medium | はい | いいえ | pre, post | missing |
| `unreal.scaffold_economy_system` | Scaffold Economy System | legacy_hidden | medium | はい | いいえ | pre, post | missing |
| `unreal.scaffold_mcp_tool` | Scaffold MCP Tool | visible | medium | はい | いいえ | pre, post | missing |
| `unreal.scaffold_recipe` | Scaffold High-Level Recipe | visible | low | はい | いいえ | pre, post, memory | category |
| `unreal.scaffold_result_ui` | Scaffold Result UI | legacy_hidden | medium | はい | いいえ | pre, post | missing |
| `unreal.scaffold_round_system` | Scaffold Round System | legacy_hidden | medium | はい | いいえ | pre, post | missing |
| `unreal.scaffold_shop_system` | Scaffold Shop System | legacy_hidden | medium | はい | いいえ | pre, post | missing |

### self-extension

| ツール | Title | 公開状態 | リスク | 書込 | Dry Run | ガード | テスト |
| --- | --- | --- | --- | --- | --- | --- | --- |
| `unreal.capture_project_snapshot` | Capture Project Snapshot | visible | low | はい | いいえ | pre, post | category |
| `unreal.diff_project_snapshot` | Diff Project Snapshot | visible | read_only | いいえ | いいえ | - | category |
| `unreal.install_doctor` | Run Install Doctor | visible | low | いいえ | いいえ | - | core |
| `unreal.knowledge_eval_run` | Run Knowledge Evals | visible | low | はい | いいえ | pre, post | category |
| `unreal.knowledge_index_refresh` | Refresh Knowledge Index | visible | low | はい | はい | pre, post | category |
| `unreal.knowledge_search` | Search Knowledge Index | visible | read_only | いいえ | いいえ | - | category |
| `unreal.mcp_apply_scaffold` | Apply MCP Scaffold | legacy_hidden | high | はい | はい | pre, post, lock | category |
| `unreal.mcp_backup_project_state` | Backup Project State | visible | high | はい | はい | pre, post, lock | category |
| `unreal.mcp_build_client` | Build Client Target | visible | medium | いいえ | いいえ | lock, process, memory | manual |
| `unreal.mcp_build_editor` | Build Editor Target | visible | high | いいえ | いいえ | pre, post, lock, build, process, memory | missing |
| `unreal.mcp_build_game` | Build Game Target | visible | medium | いいえ | いいえ | lock, process, memory | manual |
| `unreal.mcp_build_packaged` | Build Packaged Target | visible | high | いいえ | いいえ | lock, process, memory | manual |
| `unreal.mcp_build_server` | Build Server Target | visible | medium | いいえ | いいえ | lock, process, memory | manual |
| `unreal.mcp_classify_error` | Classify MCP Error | visible | read_only | いいえ | いいえ | - | category |
| `unreal.mcp_clean_test_artifacts` | Clean Test Artifacts | visible | high | はい | はい | pre, post, lock | missing |
| `unreal.mcp_compile_error_fix_plan` | Plan Compile Error Fix | visible | medium | はい | はい | pre, post, lock | missing |
| `unreal.mcp_diff_last_apply` | Diff Last Apply | visible | read_only | いいえ | いいえ | - | category |
| `unreal.mcp_extension_pipeline` | Run Extension Pipeline | legacy_hidden | critical | はい | いいえ | pre, post, lock, build, process, restart, memory | missing |
| `unreal.mcp_generate_tests` | Generate MCP Tests | visible | medium | はい | はい | pre, post, lock | missing |
| `unreal.mcp_inspect_scaffold` | Inspect MCP Scaffold | visible | read_only | いいえ | いいえ | - | category |
| `unreal.mcp_list_scaffolds` | List MCP Scaffolds | visible | read_only | いいえ | いいえ | - | missing |
| `unreal.mcp_lock_extension_session` | Lock Extension Session | visible | low | いいえ | いいえ | pre, post, lock | missing |
| `unreal.mcp_patch_scaffold_patch` | Patch Scaffold Fragment | visible | high | はい | はい | pre, post, lock | category |
| `unreal.mcp_patch_scaffold_snippet` | Patch Scaffold Snippet | legacy_hidden | high | はい | はい | pre, post, lock | missing |
| `unreal.mcp_pipeline_status` | Get Pipeline Status | visible | read_only | いいえ | いいえ | - | missing |
| `unreal.mcp_prepare_test_sandbox` | Prepare MCP Test Sandbox | visible | medium | はい | はい | pre, post | category |
| `unreal.mcp_rollback_last_extension` | Rollback Last Extension | visible | high | はい | はい | pre, post, lock | manual |
| `unreal.mcp_rollback_to_manifest` | Rollback To Manifest | visible | high | はい | はい | pre, post, lock | missing |
| `unreal.mcp_run_test_suite` | Run MCP Test Suite | visible | medium | はい | いいえ | pre, post, lock, memory | missing |
| `unreal.mcp_run_tool_test` | Run MCP Tool Test | visible | medium | はい | いいえ | pre, post, lock, memory | missing |
| `unreal.mcp_supervisor_install` | Install MCP Supervisor | visible | high | はい | はい | pre, post, lock, process | category |
| `unreal.mcp_tool_audit` | Audit MCP Tools | visible | read_only | いいえ | いいえ | - | core |
| `unreal.mcp_user_registry_reload` | Reload User Tool Registry | visible | low | はい | はい | pre, post, lock | core |
| `unreal.mcp_user_tool_smoke` | Smoke-test User Tool | visible | low | はい | はい | pre, post, lock | core |
| `unreal.mcp_validate_cpp_patch` | Validate C++ Patch | visible | read_only | いいえ | いいえ | - | category |
| `unreal.mcp_validate_cpp_snippet` | Validate C++ Snippet | legacy_hidden | read_only | いいえ | いいえ | - | missing |
| `unreal.mcp_validate_tool_schema` | Validate Tool Schema | visible | read_only | いいえ | いいえ | - | core |
| `unreal.mcp_workbench_status` | MCP Workbench Status | visible | read_only | いいえ | いいえ | - | core |
| `unreal.preview_change_plan` | Preview Change Plan | visible | read_only | いいえ | いいえ | - | category |
| `unreal.tool_gap_analyze` | Analyze MCP Tool Gap | visible | read_only | いいえ | いいえ | - | category |
| `unreal.tool_recommend` | Recommend MCP Tools | visible | read_only | いいえ | いいえ | - | category |
| `unreal.tools.export_package` | Export Tool Package | visible | medium | はい | はい | pre, post | category |
| `unreal.tools.import_package` | Import Tool Package | visible | high | はい | はい | pre, post, lock | category |
| `unreal.tools.list_exportable` | List Exportable Tools | visible | read_only | いいえ | いいえ | - | category |
| `unreal.user_registry_introspect` | Introspect User Registry | visible | read_only | いいえ | いいえ | - | category |
| `unreal.verify_task_outcome` | Verify Task Outcome | visible | read_only | いいえ | いいえ | - | category |
| `unreal.workflow_recommend` | Recommend MCP Workflow | visible | read_only | いいえ | いいえ | - | category |
| `unreal.workflow_run` | Run MCP Workflow | visible | high | はい | はい | pre, post, memory | category |

### skills

| ツール | Title | 公開状態 | リスク | 書込 | Dry Run | ガード | テスト |
| --- | --- | --- | --- | --- | --- | --- | --- |
| `unreal.chat_label_active_task` | Label Active Chat Task | visible | low | いいえ | いいえ | - | category |
| `unreal.skill_activity_status` | Get Skill Activity Status | visible | read_only | いいえ | いいえ | - | core |
| `unreal.skill_apply` | Apply Skill | visible | medium | はい | いいえ | pre, post, memory | missing |
| `unreal.skill_distill_from_activity` | Distill Skill From Activity | visible | medium | はい | いいえ | pre, post | core |
| `unreal.skill_list` | List Skills | visible | read_only | いいえ | いいえ | - | core |
| `unreal.skill_promote_draft` | Promote Skill Draft | visible | high | はい | はい | pre, post, lock | core |
| `unreal.skill_read` | Read Skill | visible | read_only | いいえ | いいえ | - | missing |
| `unreal.skill_recording_start` | Start Skill Recording | visible | medium | はい | いいえ | pre, post | core |
| `unreal.skill_recording_stop` | Stop Skill Recording | visible | medium | はい | いいえ | pre, post | core |
| `unreal.skill_save_draft` | Save Skill Draft | visible | medium | はい | いいえ | pre, post | core |

### task-atlas

| ツール | Title | 公開状態 | リスク | 書込 | Dry Run | ガード | テスト |
| --- | --- | --- | --- | --- | --- | --- | --- |
| `unreal.activity_log_annotate` | Annotate Activity Log | visible | low | はい | いいえ | pre, post | category |
| `unreal.task_atlas_delete_made_tool` | Delete Task Atlas Made Tool | visible | high | はい | はい | pre, post, lock | category |
| `unreal.task_atlas_list_made_tools` | List Task Atlas Made Tools | visible | read_only | いいえ | いいえ | - | category |
| `unreal.task_atlas_make_composite` | Make Task Atlas Composite | visible | high | はい | はい | pre, post, lock | category |
| `unreal.task_atlas_promote_to_rag` | Promote Task Atlas Task To RAG | visible | medium | はい | はい | pre, post | category |
| `unreal.task_atlas_smoke_made_tool` | Smoke Task Atlas Made Tool | visible | high | はい | はい | pre, post, lock | category |
| `unreal.task_describe` | Describe Task Atlas Task | visible | read_only | いいえ | いいえ | - | category |
| `unreal.task_label_backfill` | Backfill Task Atlas Labels | visible | medium | はい | はい | pre, post | category |
| `unreal.task_list` | List Task Atlas Tasks | visible | read_only | いいえ | いいえ | - | category |
| `unreal.task_pin` | Pin Task Atlas Task | visible | low | はい | いいえ | pre, post | category |
| `unreal.task_rate` | Rate Task Atlas Task | visible | low | はい | いいえ | pre, post | category |

### verification

| ツール | Title | 公開状態 | リスク | 書込 | Dry Run | ガード | テスト |
| --- | --- | --- | --- | --- | --- | --- | --- |
| `unreal.automation_list` | List Automation Tests | visible | read_only | いいえ | いいえ | - | category |
| `unreal.automation_report` | Get Automation Run Report | visible | read_only | いいえ | いいえ | - | category |
| `unreal.automation_run` | Run Automation Test | visible | medium | はい | いいえ | pre, post | category |
| `unreal.editor_diagnostics` | Read Editor Diagnostics | visible | read_only | いいえ | いいえ | - | category |
| `unreal.pie_input_probe` | Probe PIE Input Movement | visible | medium | いいえ | いいえ | pre, post, lock | core |
| `unreal.pie_smoke` | Run PIE Smoke | visible | high | はい | いいえ | pre, post | category |
| `unreal.verify_player_controls` | Verify Player Controls | visible | medium | いいえ | いいえ | pre, post, lock | category |
| `unreal.verify_viewport_widgets` | Verify Viewport Widgets | visible | read_only | いいえ | いいえ | - | core |

### widget

| ツール | Title | 公開状態 | リスク | 書込 | Dry Run | ガード | テスト |
| --- | --- | --- | --- | --- | --- | --- | --- |
| `unreal.widget_add` | Add Widget | visible | medium | はい | いいえ | pre, post | category |
| `unreal.widget_bind_blueprint_variable` | Bind Widget Variable | visible | medium | はい | いいえ | pre, post | missing |
| `unreal.widget_bind_event` | Bind Widget Event | visible | medium | はい | いいえ | pre, post | missing |
| `unreal.widget_build_template` | Build Widget Template | visible | medium | はい | いいえ | pre, post | category |
| `unreal.widget_delete` | Delete Widget | visible | high | はい | いいえ | pre, post | category |
| `unreal.widget_dump_tree` | Dump Widget Tree | visible | read_only | いいえ | いいえ | - | category |
| `unreal.widget_duplicate` | Duplicate Widget | visible | medium | はい | いいえ | pre, post | category |
| `unreal.widget_remove` | Remove Widget | visible | medium | はい | いいえ | pre, post | missing |
| `unreal.widget_rename` | Rename Widget | visible | medium | はい | いいえ | pre, post | category |
| `unreal.widget_reorder_child` | Reorder Widget | visible | low | はい | いいえ | pre, post | category |
| `unreal.widget_set_property` | Set Widget Property | visible | medium | はい | いいえ | pre, post | category |
| `unreal.widget_set_slot_layout` | Set Widget Slot Layout | visible | medium | はい | いいえ | pre, post | missing |

Full EN/source page: [[Tool Library]]
