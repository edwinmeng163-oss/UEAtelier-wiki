---
title: "Tool Library CN"
language: "cn"
source_note: "Tool Library"
source_repo: "https://github.com/edwinmeng163-oss/UEAtelier"
source_branch: "main"
source_head: "6e7b775"
source_describe: "v0.35.0-1-g6e7b775"
generated: "2026-07-14"
---
# Tool Library CN

此列表是从 ToolRegistry 生成的 190 个工具中文索引。工具名和 title 是 canonical source identifier，保持原文。

## Summary

| Metric | Value |
| --- | --- |
| Total | 190 |
| Visible | 178 |
| Legacy hidden | 12 |

## Category Counts

| 分类 | Count |
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

| 风险 | Count |
| --- | ---: |
| critical | 5 |
| high | 25 |
| low | 27 |
| medium | 82 |
| read_only | 51 |

## All Tools

### actors

| 工具 | Title | 暴露状态 | 风险 | 写入 | Dry Run | 保护 | 测试 |
| --- | --- | --- | --- | --- | --- | --- | --- |
| `unreal.actor_get_property` | Get Actor Property | visible | low | 否 | 否 | - | core |
| `unreal.actor_get_transform` | Get Actor Transform | visible | low | 否 | 否 | - | core |
| `unreal.actor_set_auto_possess` | Set Actor Auto Possess | visible | medium | 是 | 否 | pre, post | core |
| `unreal.batch_configure_static_mesh_actors` | Configure Static Mesh Actors | visible | medium | 是 | 否 | pre, post | missing |
| `unreal.batch_set_actor_properties` | Batch Set Actor Properties | legacy_hidden | medium | 是 | 否 | pre, post | missing |
| `unreal.batch_set_actor_scale` | Batch Set Actor Scale | visible | medium | 是 | 否 | pre, post | missing |
| `unreal.batch_set_actor_tags` | Batch Set Actor Tags | visible | medium | 是 | 否 | pre, post | missing |
| `unreal.batch_set_point_light_properties` | Batch Set Point Lights | visible | medium | 是 | 否 | pre, post | missing |
| `unreal.clear_level_environment` | Clear Level Environment | visible | high | 是 | 是 | pre, post | category |
| `unreal.destroy_selected_actors` | Destroy Selected Actors | visible | high | 是 | 否 | pre, post | missing |
| `unreal.layout_actors_circle` | Layout Actors In Circle | visible | medium | 是 | 否 | pre, post | missing |
| `unreal.layout_actors_grid` | Layout Actors In Grid | visible | medium | 是 | 否 | pre, post | missing |
| `unreal.list_level_actors` | List Level Actors | visible | read_only | 否 | 否 | - | missing |
| `unreal.list_selected_actors` | List Selected Actors | visible | read_only | 否 | 否 | - | missing |
| `unreal.select_actors` | Select Actors | visible | low | 否 | 否 | - | category |
| `unreal.set_actor_transform` | Set Actor Transform | visible | medium | 是 | 否 | pre, post | missing |
| `unreal.spawn_actor` | Spawn Actor | legacy_hidden | medium | 是 | 否 | pre, post | missing |
| `unreal.spawn_actor_basic` | Spawn Actor (Basic) | visible | medium | 是 | 否 | pre, post | missing |
| `unreal.spawn_actor_batch` | Spawn Actor Batch | legacy_hidden | medium | 是 | 否 | pre, post | missing |
| `unreal.spawn_actor_batch_basic` | Spawn Actor Batch (Basic) | visible | medium | 是 | 否 | pre, post | missing |
| `unreal.spawn_static_mesh_actor` | Spawn Static Mesh Actor | visible | medium | 是 | 否 | pre, post | category |

### blueprint

| 工具 | Title | 暴露状态 | 风险 | 写入 | Dry Run | 保护 | 测试 |
| --- | --- | --- | --- | --- | --- | --- | --- |
| `unreal.bp_add_branch_node` | Add Branch Node | visible | medium | 是 | 否 | pre, post | missing |
| `unreal.bp_add_call_function_node` | Add Function Call Node | visible | medium | 是 | 否 | pre, post | missing |
| `unreal.bp_add_component` | Add Blueprint Component | visible | medium | 是 | 否 | pre, post | core |
| `unreal.bp_add_event_node` | Add Event Node | visible | medium | 是 | 否 | pre, post | missing |
| `unreal.bp_add_for_each_node` | Add ForEach Node | visible | medium | 是 | 否 | pre, post | missing |
| `unreal.bp_add_function` | Add Blueprint Function | visible | medium | 是 | 否 | pre, post | missing |
| `unreal.bp_add_gameplay_node` | Add Blueprint Gameplay Node | visible | medium | 是 | 否 | pre, post | core |
| `unreal.bp_add_input_action_event_node` | Add Input Action Event Node | visible | medium | 是 | 否 | pre, post | core |
| `unreal.bp_add_input_axis_event_node` | Add Input Axis Event Node | visible | medium | 是 | 否 | pre, post | core |
| `unreal.bp_add_macro_graph` | Add Blueprint Macro Graph | visible | low | 是 | 否 | pre, post | core |
| `unreal.bp_add_variable` | Add Blueprint Variable | visible | medium | 是 | 否 | pre, post | category |
| `unreal.bp_arrange_graph` | Arrange Blueprint Graph | visible | medium | 是 | 否 | pre, post | missing |
| `unreal.bp_compile_save` | Compile And Save Blueprint | visible | medium | 是 | 否 | pre, post | category |
| `unreal.bp_connect_pins` | Connect Blueprint Pins | visible | medium | 是 | 否 | pre, post | category |
| `unreal.bp_delete_function` | Delete Blueprint Function | visible | low | 是 | 否 | pre, post | core |
| `unreal.bp_delete_macro_graph` | Delete Blueprint Macro Graph | visible | medium | 是 | 否 | pre, post | core |
| `unreal.bp_delete_node` | Delete Blueprint Node | visible | low | 是 | 否 | pre, post | core |
| `unreal.bp_delete_variable` | Delete Blueprint Variable | visible | low | 是 | 否 | pre, post | core |
| `unreal.bp_interface_add` | Add Blueprint Interface | visible | medium | 是 | 否 | pre, post | core |
| `unreal.bp_interface_remove` | Remove Blueprint Interface | visible | medium | 是 | 否 | pre, post | core |
| `unreal.bp_list_graph_nodes` | List Blueprint Graph Nodes | visible | read_only | 否 | 否 | - | category |
| `unreal.bp_rename_function` | Rename Blueprint Function | visible | medium | 是 | 否 | pre, post | core |
| `unreal.bp_rename_variable` | Rename Blueprint Variable | visible | medium | 是 | 否 | pre, post | core |
| `unreal.bp_set_class_default` | Set Blueprint Class Default | visible | medium | 是 | 否 | pre, post | core |
| `unreal.bp_set_component_property` | Set Blueprint Component Property | visible | medium | 是 | 否 | pre, post | core |
| `unreal.bp_set_pin_default` | Set Blueprint Pin Default | visible | medium | 是 | 否 | pre, post | missing |
| `unreal.bp_trace_pin_connections` | Trace Blueprint Pin Connections | visible | read_only | 否 | 否 | - | category |
| `unreal.compile_blueprint` | Compile Blueprint | visible | medium | 否 | 否 | - | missing |
| `unreal.compile_blueprints_in_path` | Compile Blueprints In Path | visible | medium | 否 | 否 | - | missing |
| `unreal.create_blueprint_class` | Create Blueprint Class | visible | medium | 是 | 否 | pre, post | category |

### code

| 工具 | Title | 暴露状态 | 风险 | 写入 | Dry Run | 保护 | 测试 |
| --- | --- | --- | --- | --- | --- | --- | --- |
| `unreal.code_apply_change` | Apply Code Change | visible | high | 是 | 是 | pre, post, lock | missing |
| `unreal.code_list_files` | List Code Files | visible | read_only | 否 | 否 | - | category |
| `unreal.code_preview_change` | Preview Code Change | visible | low | 否 | 否 | pre | missing |
| `unreal.code_read_file` | Read Code File | visible | read_only | 否 | 否 | - | category |
| `unreal.code_rollback_change` | Rollback Code Change | visible | high | 是 | 是 | pre, post, lock | missing |
| `unreal.code_search` | Search Code | visible | read_only | 否 | 否 | - | category |
| `unreal.code_workspace_status` | Code Workspace Status | visible | read_only | 否 | 否 | - | category |

### editor

| 工具 | Title | 暴露状态 | 风险 | 写入 | Dry Run | 保护 | 测试 |
| --- | --- | --- | --- | --- | --- | --- | --- |
| `unreal.asset_move` | Move Asset | visible | medium | 是 | 是 | pre, post | core |
| `unreal.chat_history_tail` | Tail Chat Panel History | visible | read_only | 否 | 否 | - | category |
| `unreal.chat_inject_user_input` | Inject Chat Panel User Input | visible | medium | 是 | 是 | pre, post, lock | category |
| `unreal.chat_tool_log_tail` | Tail Chat Tool Log | visible | read_only | 否 | 否 | - | category |
| `unreal.configure_player_input` | Configure Player Input | visible | medium | 是 | 是 | pre, post | category |
| `unreal.dependency_remap` | Remap Asset Dependencies | visible | high | 是 | 是 | pre, post | core |
| `unreal.editor.engine_version` | Editor Engine Version | visible | read_only | 否 | 否 | - | core |
| `unreal.editor.python_runtime_info` | Editor Python Runtime Info | visible | critical | 否 | 否 | process | manual |
| `unreal.editor_set_map_game_mode` | Set Map GameMode | visible | medium | 是 | 否 | pre, post | core |
| `unreal.editor_status` | Editor Status | visible | read_only | 否 | 否 | - | core |
| `unreal.execute_console_command` | Execute Console Command | visible | critical | 是 | 否 | pre, post | missing |
| `unreal.execute_python` | Execute Python | visible | critical | 是 | 否 | pre, post | missing |
| `unreal.execute_python_file` | Execute Python File | visible | critical | 是 | 否 | pre, post, process | missing |
| `unreal.list_assets` | List Assets | visible | read_only | 否 | 否 | - | missing |
| `unreal.list_maps` | List Maps | visible | read_only | 否 | 否 | - | missing |
| `unreal.list_selected_assets` | List Selected Assets | visible | read_only | 否 | 否 | - | missing |
| `unreal.map_check` | Map Check | visible | read_only | 否 | 否 | - | missing |
| `unreal.open_asset` | Open Asset | visible | low | 否 | 否 | - | missing |
| `unreal.open_map` | Open Map | visible | low | 否 | 否 | - | missing |
| `unreal.project_settings_get` | Get Project Setting | visible | low | 否 | 否 | - | core |
| `unreal.project_version_migration` | Project Version Migration | visible | high | 是 | 是 | pre, post | core |
| `unreal.redirector_fixup` | Fix Up Redirectors | visible | high | 是 | 是 | pre, post | core |
| `unreal.save_dirty_packages` | Save Dirty Packages | visible | medium | 是 | 否 | pre, post | missing |
| `unreal.start_pie` | Start PIE | visible | low | 否 | 否 | - | missing |
| `unreal.stop_pie` | Stop PIE | visible | low | 否 | 否 | - | missing |
| `unreal.sync_content_browser` | Sync Content Browser | visible | low | 否 | 否 | - | missing |
| `unreal.tail_log` | Tail Editor Log | visible | read_only | 否 | 否 | - | missing |

### material

| 工具 | Title | 暴露状态 | 风险 | 写入 | Dry Run | 保护 | 测试 |
| --- | --- | --- | --- | --- | --- | --- | --- |
| `unreal.material_instance_get_parameters` | Get Material Parameters | visible | read_only | 否 | 否 | - | category |
| `unreal.material_instance_list` | List Material Instances | visible | read_only | 否 | 否 | - | category |
| `unreal.material_instance_set_scalar` | Set Material Scalar | visible | medium | 是 | 否 | pre, post | category |
| `unreal.material_instance_set_vector` | Set Material Vector | visible | medium | 是 | 否 | pre, post | category |

### memory

| 工具 | Title | 暴露状态 | 风险 | 写入 | Dry Run | 保护 | 测试 |
| --- | --- | --- | --- | --- | --- | --- | --- |
| `unreal.project_memory_delete` | Delete Project Memory Entry | visible | medium | 是 | 是 | pre, post, memory | missing |
| `unreal.project_memory_edit` | Edit Project Memory Entry | visible | medium | 是 | 是 | pre, post, memory | missing |
| `unreal.project_memory_read` | Read Project Memory Entry | visible | read_only | 否 | 否 | - | missing |
| `unreal.project_memory_view` | View Project Memory | visible | read_only | 否 | 否 | - | missing |
| `unreal.project_memory_write` | Write Project Memory Entry | visible | medium | 是 | 否 | pre, post, memory | missing |

### scaffold

| 工具 | Title | 暴露状态 | 风险 | 写入 | Dry Run | 保护 | 测试 |
| --- | --- | --- | --- | --- | --- | --- | --- |
| `unreal.scaffold_autobattler_ai` | Scaffold Autobattler AI | legacy_hidden | medium | 是 | 否 | pre, post | missing |
| `unreal.scaffold_economy_system` | Scaffold Economy System | legacy_hidden | medium | 是 | 否 | pre, post | missing |
| `unreal.scaffold_mcp_tool` | Scaffold MCP Tool | visible | medium | 是 | 否 | pre, post | missing |
| `unreal.scaffold_recipe` | Scaffold High-Level Recipe | visible | low | 是 | 否 | pre, post, memory | category |
| `unreal.scaffold_result_ui` | Scaffold Result UI | legacy_hidden | medium | 是 | 否 | pre, post | missing |
| `unreal.scaffold_round_system` | Scaffold Round System | legacy_hidden | medium | 是 | 否 | pre, post | missing |
| `unreal.scaffold_shop_system` | Scaffold Shop System | legacy_hidden | medium | 是 | 否 | pre, post | missing |

### self-extension

| 工具 | Title | 暴露状态 | 风险 | 写入 | Dry Run | 保护 | 测试 |
| --- | --- | --- | --- | --- | --- | --- | --- |
| `unreal.capture_project_snapshot` | Capture Project Snapshot | visible | low | 是 | 否 | pre, post | category |
| `unreal.diff_project_snapshot` | Diff Project Snapshot | visible | read_only | 否 | 否 | - | category |
| `unreal.install_doctor` | Run Install Doctor | visible | low | 否 | 否 | - | core |
| `unreal.knowledge_eval_run` | Run Knowledge Evals | visible | low | 是 | 否 | pre, post | category |
| `unreal.knowledge_index_refresh` | Refresh Knowledge Index | visible | low | 是 | 是 | pre, post | category |
| `unreal.knowledge_search` | Search Knowledge Index | visible | read_only | 否 | 否 | - | category |
| `unreal.mcp_apply_scaffold` | Apply MCP Scaffold | legacy_hidden | high | 是 | 是 | pre, post, lock | category |
| `unreal.mcp_backup_project_state` | Backup Project State | visible | high | 是 | 是 | pre, post, lock | category |
| `unreal.mcp_build_client` | Build Client Target | visible | medium | 否 | 否 | lock, process, memory | manual |
| `unreal.mcp_build_editor` | Build Editor Target | visible | high | 否 | 否 | pre, post, lock, build, process, memory | missing |
| `unreal.mcp_build_game` | Build Game Target | visible | medium | 否 | 否 | lock, process, memory | manual |
| `unreal.mcp_build_packaged` | Build Packaged Target | visible | high | 否 | 否 | lock, process, memory | manual |
| `unreal.mcp_build_server` | Build Server Target | visible | medium | 否 | 否 | lock, process, memory | manual |
| `unreal.mcp_classify_error` | Classify MCP Error | visible | read_only | 否 | 否 | - | category |
| `unreal.mcp_clean_test_artifacts` | Clean Test Artifacts | visible | high | 是 | 是 | pre, post, lock | missing |
| `unreal.mcp_compile_error_fix_plan` | Plan Compile Error Fix | visible | medium | 是 | 是 | pre, post, lock | missing |
| `unreal.mcp_diff_last_apply` | Diff Last Apply | visible | read_only | 否 | 否 | - | category |
| `unreal.mcp_extension_pipeline` | Run Extension Pipeline | legacy_hidden | critical | 是 | 否 | pre, post, lock, build, process, restart, memory | missing |
| `unreal.mcp_generate_tests` | Generate MCP Tests | visible | medium | 是 | 是 | pre, post, lock | missing |
| `unreal.mcp_inspect_scaffold` | Inspect MCP Scaffold | visible | read_only | 否 | 否 | - | category |
| `unreal.mcp_list_scaffolds` | List MCP Scaffolds | visible | read_only | 否 | 否 | - | missing |
| `unreal.mcp_lock_extension_session` | Lock Extension Session | visible | low | 否 | 否 | pre, post, lock | missing |
| `unreal.mcp_patch_scaffold_patch` | Patch Scaffold Fragment | visible | high | 是 | 是 | pre, post, lock | category |
| `unreal.mcp_patch_scaffold_snippet` | Patch Scaffold Snippet | legacy_hidden | high | 是 | 是 | pre, post, lock | missing |
| `unreal.mcp_pipeline_status` | Get Pipeline Status | visible | read_only | 否 | 否 | - | missing |
| `unreal.mcp_prepare_test_sandbox` | Prepare MCP Test Sandbox | visible | medium | 是 | 是 | pre, post | category |
| `unreal.mcp_rollback_last_extension` | Rollback Last Extension | visible | high | 是 | 是 | pre, post, lock | manual |
| `unreal.mcp_rollback_to_manifest` | Rollback To Manifest | visible | high | 是 | 是 | pre, post, lock | missing |
| `unreal.mcp_run_test_suite` | Run MCP Test Suite | visible | medium | 是 | 否 | pre, post, lock, memory | missing |
| `unreal.mcp_run_tool_test` | Run MCP Tool Test | visible | medium | 是 | 否 | pre, post, lock, memory | missing |
| `unreal.mcp_supervisor_install` | Install MCP Supervisor | visible | high | 是 | 是 | pre, post, lock, process | category |
| `unreal.mcp_tool_audit` | Audit MCP Tools | visible | read_only | 否 | 否 | - | core |
| `unreal.mcp_user_registry_reload` | Reload User Tool Registry | visible | low | 是 | 是 | pre, post, lock | core |
| `unreal.mcp_user_tool_smoke` | Smoke-test User Tool | visible | low | 是 | 是 | pre, post, lock | core |
| `unreal.mcp_validate_cpp_patch` | Validate C++ Patch | visible | read_only | 否 | 否 | - | category |
| `unreal.mcp_validate_cpp_snippet` | Validate C++ Snippet | legacy_hidden | read_only | 否 | 否 | - | missing |
| `unreal.mcp_validate_tool_schema` | Validate Tool Schema | visible | read_only | 否 | 否 | - | core |
| `unreal.mcp_workbench_status` | MCP Workbench Status | visible | read_only | 否 | 否 | - | core |
| `unreal.preview_change_plan` | Preview Change Plan | visible | read_only | 否 | 否 | - | category |
| `unreal.tool_gap_analyze` | Analyze MCP Tool Gap | visible | read_only | 否 | 否 | - | category |
| `unreal.tool_recommend` | Recommend MCP Tools | visible | read_only | 否 | 否 | - | category |
| `unreal.tools.export_package` | Export Tool Package | visible | medium | 是 | 是 | pre, post | category |
| `unreal.tools.import_package` | Import Tool Package | visible | high | 是 | 是 | pre, post, lock | category |
| `unreal.tools.list_exportable` | List Exportable Tools | visible | read_only | 否 | 否 | - | category |
| `unreal.user_registry_introspect` | Introspect User Registry | visible | read_only | 否 | 否 | - | category |
| `unreal.verify_task_outcome` | Verify Task Outcome | visible | read_only | 否 | 否 | - | category |
| `unreal.workflow_recommend` | Recommend MCP Workflow | visible | read_only | 否 | 否 | - | category |
| `unreal.workflow_run` | Run MCP Workflow | visible | high | 是 | 是 | pre, post, memory | category |

### skills

| 工具 | Title | 暴露状态 | 风险 | 写入 | Dry Run | 保护 | 测试 |
| --- | --- | --- | --- | --- | --- | --- | --- |
| `unreal.chat_label_active_task` | Label Active Chat Task | visible | low | 否 | 否 | - | category |
| `unreal.skill_activity_status` | Get Skill Activity Status | visible | read_only | 否 | 否 | - | core |
| `unreal.skill_apply` | Apply Skill | visible | medium | 是 | 否 | pre, post, memory | missing |
| `unreal.skill_distill_from_activity` | Distill Skill From Activity | visible | medium | 是 | 否 | pre, post | core |
| `unreal.skill_list` | List Skills | visible | read_only | 否 | 否 | - | core |
| `unreal.skill_promote_draft` | Promote Skill Draft | visible | high | 是 | 是 | pre, post, lock | core |
| `unreal.skill_read` | Read Skill | visible | read_only | 否 | 否 | - | missing |
| `unreal.skill_recording_start` | Start Skill Recording | visible | medium | 是 | 否 | pre, post | core |
| `unreal.skill_recording_stop` | Stop Skill Recording | visible | medium | 是 | 否 | pre, post | core |
| `unreal.skill_save_draft` | Save Skill Draft | visible | medium | 是 | 否 | pre, post | core |

### task-atlas

| 工具 | Title | 暴露状态 | 风险 | 写入 | Dry Run | 保护 | 测试 |
| --- | --- | --- | --- | --- | --- | --- | --- |
| `unreal.activity_log_annotate` | Annotate Activity Log | visible | low | 是 | 否 | pre, post | category |
| `unreal.task_atlas_delete_made_tool` | Delete Task Atlas Made Tool | visible | high | 是 | 是 | pre, post, lock | category |
| `unreal.task_atlas_list_made_tools` | List Task Atlas Made Tools | visible | read_only | 否 | 否 | - | category |
| `unreal.task_atlas_make_composite` | Make Task Atlas Composite | visible | high | 是 | 是 | pre, post, lock | category |
| `unreal.task_atlas_promote_to_rag` | Promote Task Atlas Task To RAG | visible | medium | 是 | 是 | pre, post | category |
| `unreal.task_atlas_smoke_made_tool` | Smoke Task Atlas Made Tool | visible | high | 是 | 是 | pre, post, lock | category |
| `unreal.task_describe` | Describe Task Atlas Task | visible | read_only | 否 | 否 | - | category |
| `unreal.task_label_backfill` | Backfill Task Atlas Labels | visible | medium | 是 | 是 | pre, post | category |
| `unreal.task_list` | List Task Atlas Tasks | visible | read_only | 否 | 否 | - | category |
| `unreal.task_pin` | Pin Task Atlas Task | visible | low | 是 | 否 | pre, post | category |
| `unreal.task_rate` | Rate Task Atlas Task | visible | low | 是 | 否 | pre, post | category |

### verification

| 工具 | Title | 暴露状态 | 风险 | 写入 | Dry Run | 保护 | 测试 |
| --- | --- | --- | --- | --- | --- | --- | --- |
| `unreal.automation_list` | List Automation Tests | visible | read_only | 否 | 否 | - | category |
| `unreal.automation_report` | Get Automation Run Report | visible | read_only | 否 | 否 | - | category |
| `unreal.automation_run` | Run Automation Test | visible | medium | 是 | 否 | pre, post | category |
| `unreal.editor_diagnostics` | Read Editor Diagnostics | visible | read_only | 否 | 否 | - | category |
| `unreal.pie_input_probe` | Probe PIE Input Movement | visible | medium | 否 | 否 | pre, post, lock | core |
| `unreal.pie_smoke` | Run PIE Smoke | visible | high | 是 | 否 | pre, post | category |
| `unreal.verify_player_controls` | Verify Player Controls | visible | medium | 否 | 否 | pre, post, lock | category |
| `unreal.verify_viewport_widgets` | Verify Viewport Widgets | visible | read_only | 否 | 否 | - | core |

### widget

| 工具 | Title | 暴露状态 | 风险 | 写入 | Dry Run | 保护 | 测试 |
| --- | --- | --- | --- | --- | --- | --- | --- |
| `unreal.widget_add` | Add Widget | visible | medium | 是 | 否 | pre, post | category |
| `unreal.widget_bind_blueprint_variable` | Bind Widget Variable | visible | medium | 是 | 否 | pre, post | missing |
| `unreal.widget_bind_event` | Bind Widget Event | visible | medium | 是 | 否 | pre, post | missing |
| `unreal.widget_build_template` | Build Widget Template | visible | medium | 是 | 否 | pre, post | category |
| `unreal.widget_delete` | Delete Widget | visible | high | 是 | 否 | pre, post | category |
| `unreal.widget_dump_tree` | Dump Widget Tree | visible | read_only | 否 | 否 | - | category |
| `unreal.widget_duplicate` | Duplicate Widget | visible | medium | 是 | 否 | pre, post | category |
| `unreal.widget_remove` | Remove Widget | visible | medium | 是 | 否 | pre, post | missing |
| `unreal.widget_rename` | Rename Widget | visible | medium | 是 | 否 | pre, post | category |
| `unreal.widget_reorder_child` | Reorder Widget | visible | low | 是 | 否 | pre, post | category |
| `unreal.widget_set_property` | Set Widget Property | visible | medium | 是 | 否 | pre, post | category |
| `unreal.widget_set_slot_layout` | Set Widget Slot Layout | visible | medium | 是 | 否 | pre, post | missing |

Full EN/source page: [[Tool Library]]
