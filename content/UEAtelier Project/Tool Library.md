---
title: "Tool Library"
source_repo: "https://github.com/edwinmeng163-oss/UEAtelier"
source_branch: "main"
source_head: "421440e"
source_describe: "v0.34.0-1-g421440e"
generated: "2026-07-04"
---
# Tool Library

This page is generated from `Tools/UnrealMcpToolRegistry/tools.json`. It includes all 190 registry entries. See [[Tool Schemas]] for top-level input-schema properties.

## Registry Summary

| Metric | Value |
| --- | --- |
| Registry version | `2026-05-05.descriptor-precision-tools-v1` |
| Schema version | `1` |
| Total entries | 190 |
| Visible entries | 178 |
| Legacy hidden entries | 12 |

## Category Counts

| Category | Count |
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

| Risk | Count |
| --- | ---: |
| critical | 5 |
| high | 25 |
| low | 26 |
| medium | 82 |
| read_only | 52 |

## Guard/Policy Counts

| Field | Yes | No |
| --- | ---: | ---: |
| `requiresWrite` | 115 | 75 |
| `requiresBuild` | 2 | 188 |
| `requiresExternalProcess` | 9 | 181 |
| `requiresRestart` | 1 | 189 |
| `requiresProjectMemory` | 14 | 176 |
| `requiresLock` | 31 | 159 |
| `dryRunSupport` | 34 | 156 |
| `preflightSupport` | 120 | 70 |
| `postcheckSupport` | 119 | 71 |

## Test Coverage Counts

| Coverage | Count |
| --- | ---: |
| category | 72 |
| core | 41 |
| manual | 6 |
| missing | 71 |

## All Tools By Category

### actors

| Tool | Title | Exposure | Risk | Write | Dry Run | Guards | Coverage | Docs |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| `unreal.actor_get_property` | Get Actor Property | visible | low | no | no | - | core | `README.md#tool-coverage` |
| `unreal.actor_get_transform` | Get Actor Transform | visible | low | no | no | - | core | `README.md#tool-coverage` |
| `unreal.actor_set_auto_possess` | Set Actor Auto Possess | visible | medium | yes | no | pre, post | core | `README.md#tool-coverage` |
| `unreal.batch_configure_static_mesh_actors` | Configure Static Mesh Actors | visible | medium | yes | no | pre, post | missing | `README.md#tool-coverage` |
| `unreal.batch_set_actor_properties` | Batch Set Actor Properties | legacy_hidden | medium | yes | no | pre, post | missing | `README.md#tool-coverage` |
| `unreal.batch_set_actor_scale` | Batch Set Actor Scale | visible | medium | yes | no | pre, post | missing | `README.md#tool-coverage` |
| `unreal.batch_set_actor_tags` | Batch Set Actor Tags | visible | medium | yes | no | pre, post | missing | `README.md#tool-coverage` |
| `unreal.batch_set_point_light_properties` | Batch Set Point Lights | visible | medium | yes | no | pre, post | missing | `README.md#tool-coverage` |
| `unreal.clear_level_environment` | Clear Level Environment | visible | high | yes | yes | pre, post | category | `README.md#tool-coverage` |
| `unreal.destroy_selected_actors` | Destroy Selected Actors | visible | high | yes | no | pre, post | missing | `README.md#tool-coverage` |
| `unreal.layout_actors_circle` | Layout Actors In Circle | visible | medium | yes | no | pre, post | missing | `README.md#tool-coverage` |
| `unreal.layout_actors_grid` | Layout Actors In Grid | visible | medium | yes | no | pre, post | missing | `README.md#tool-coverage` |
| `unreal.list_level_actors` | List Level Actors | visible | read_only | no | no | - | missing | `README.md#tool-coverage` |
| `unreal.list_selected_actors` | List Selected Actors | visible | read_only | no | no | - | missing | `README.md#tool-coverage` |
| `unreal.select_actors` | Select Actors | visible | low | no | no | - | category | `README.md#tool-coverage` |
| `unreal.set_actor_transform` | Set Actor Transform | visible | medium | yes | no | pre, post | missing | `README.md#tool-coverage` |
| `unreal.spawn_actor` | Spawn Actor | legacy_hidden | medium | yes | no | pre, post | missing | `README.md#tool-coverage` |
| `unreal.spawn_actor_basic` | Spawn Actor (Basic) | visible | medium | yes | no | pre, post | missing | `README.md#tool-coverage` |
| `unreal.spawn_actor_batch` | Spawn Actor Batch | legacy_hidden | medium | yes | no | pre, post | missing | `README.md#tool-coverage` |
| `unreal.spawn_actor_batch_basic` | Spawn Actor Batch (Basic) | visible | medium | yes | no | pre, post | missing | `README.md#tool-coverage` |
| `unreal.spawn_static_mesh_actor` | Spawn Static Mesh Actor | visible | medium | yes | no | pre, post | category | `README.md#tool-coverage` |

### blueprint

| Tool | Title | Exposure | Risk | Write | Dry Run | Guards | Coverage | Docs |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| `unreal.bp_add_branch_node` | Add Branch Node | visible | medium | yes | no | pre, post | missing | `README.md#tool-coverage` |
| `unreal.bp_add_call_function_node` | Add Function Call Node | visible | medium | yes | no | pre, post | missing | `README.md#tool-coverage` |
| `unreal.bp_add_component` | Add Blueprint Component | visible | medium | yes | no | pre, post | core | `README.md#tool-coverage` |
| `unreal.bp_add_event_node` | Add Event Node | visible | medium | yes | no | pre, post | missing | `README.md#tool-coverage` |
| `unreal.bp_add_for_each_node` | Add ForEach Node | visible | medium | yes | no | pre, post | missing | `README.md#tool-coverage` |
| `unreal.bp_add_function` | Add Blueprint Function | visible | medium | yes | no | pre, post | missing | `README.md#tool-coverage` |
| `unreal.bp_add_gameplay_node` | Add Blueprint Gameplay Node | visible | medium | yes | no | pre, post | core | `README.md#tool-coverage` |
| `unreal.bp_add_input_action_event_node` | Add Input Action Event Node | visible | medium | yes | no | pre, post | core | `README.md#tool-coverage` |
| `unreal.bp_add_input_axis_event_node` | Add Input Axis Event Node | visible | medium | yes | no | pre, post | core | `README.md#tool-coverage` |
| `unreal.bp_add_macro_graph` | Add Blueprint Macro Graph | visible | low | yes | no | pre, post | core | `README.md#tool-coverage` |
| `unreal.bp_add_variable` | Add Blueprint Variable | visible | medium | yes | no | pre, post | category | `README.md#tool-coverage` |
| `unreal.bp_arrange_graph` | Arrange Blueprint Graph | visible | medium | yes | no | pre, post | missing | `README.md#tool-coverage` |
| `unreal.bp_compile_save` | Compile And Save Blueprint | visible | medium | yes | no | pre, post | category | `README.md#tool-coverage` |
| `unreal.bp_connect_pins` | Connect Blueprint Pins | visible | medium | yes | no | pre, post | category | `README.md#tool-coverage` |
| `unreal.bp_delete_function` | Delete Blueprint Function | visible | low | yes | no | pre, post | core | `README.md#tool-coverage` |
| `unreal.bp_delete_macro_graph` | Delete Blueprint Macro Graph | visible | medium | yes | no | pre, post | core | `README.md#tool-coverage` |
| `unreal.bp_delete_node` | Delete Blueprint Node | visible | low | yes | no | pre, post | core | `README.md#tool-coverage` |
| `unreal.bp_delete_variable` | Delete Blueprint Variable | visible | low | yes | no | pre, post | core | `README.md#tool-coverage` |
| `unreal.bp_interface_add` | Add Blueprint Interface | visible | medium | yes | no | pre, post | core | `README.md#tool-coverage` |
| `unreal.bp_interface_remove` | Remove Blueprint Interface | visible | medium | yes | no | pre, post | core | `README.md#tool-coverage` |
| `unreal.bp_list_graph_nodes` | List Blueprint Graph Nodes | visible | read_only | no | no | - | category | `README.md#tool-coverage` |
| `unreal.bp_rename_function` | Rename Blueprint Function | visible | medium | yes | no | pre, post | core | `README.md#tool-coverage` |
| `unreal.bp_rename_variable` | Rename Blueprint Variable | visible | medium | yes | no | pre, post | core | `README.md#tool-coverage` |
| `unreal.bp_set_class_default` | Set Blueprint Class Default | visible | medium | yes | no | pre, post | core | `README.md#tool-coverage` |
| `unreal.bp_set_component_property` | Set Blueprint Component Property | visible | medium | yes | no | pre, post | core | `README.md#tool-coverage` |
| `unreal.bp_set_pin_default` | Set Blueprint Pin Default | visible | medium | yes | no | pre, post | missing | `README.md#tool-coverage` |
| `unreal.bp_trace_pin_connections` | Trace Blueprint Pin Connections | visible | read_only | no | no | - | category | `README.md#tool-coverage` |
| `unreal.compile_blueprint` | Compile Blueprint | visible | medium | no | no | - | missing | `README.md#tool-coverage` |
| `unreal.compile_blueprints_in_path` | Compile Blueprints In Path | visible | medium | no | no | - | missing | `README.md#tool-coverage` |
| `unreal.create_blueprint_class` | Create Blueprint Class | visible | medium | yes | no | pre, post | category | `README.md#tool-coverage` |

### code

| Tool | Title | Exposure | Risk | Write | Dry Run | Guards | Coverage | Docs |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| `unreal.code_apply_change` | Apply Code Change | visible | high | yes | yes | pre, post, lock | missing | `README.md#tool-coverage` |
| `unreal.code_list_files` | List Code Files | visible | read_only | no | no | - | category | `README.md#tool-coverage` |
| `unreal.code_preview_change` | Preview Code Change | visible | low | no | no | pre | missing | `README.md#tool-coverage` |
| `unreal.code_read_file` | Read Code File | visible | read_only | no | no | - | category | `README.md#tool-coverage` |
| `unreal.code_rollback_change` | Rollback Code Change | visible | high | yes | yes | pre, post, lock | missing | `README.md#tool-coverage` |
| `unreal.code_search` | Search Code | visible | read_only | no | no | - | category | `README.md#tool-coverage` |
| `unreal.code_workspace_status` | Code Workspace Status | visible | read_only | no | no | - | category | `README.md#tool-coverage` |

### editor

| Tool | Title | Exposure | Risk | Write | Dry Run | Guards | Coverage | Docs |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| `unreal.asset_move` | Move Asset | visible | medium | yes | yes | pre, post | core | `README.md#tool-coverage` |
| `unreal.chat_history_tail` | Tail Chat Panel History | visible | read_only | no | no | - | category | `Docs/ChatSync.md` |
| `unreal.chat_inject_user_input` | Inject Chat Panel User Input | visible | medium | yes | yes | pre, post, lock | category | `Docs/ChatSync.md` |
| `unreal.chat_tool_log_tail` | Tail Chat Tool Log | visible | read_only | no | no | - | category | `Docs/ChatSync.md` |
| `unreal.configure_player_input` | Configure Player Input | visible | medium | yes | yes | pre, post | category | `Tools/UnrealMcpToolDocs/editor/configure_player_input.md` |
| `unreal.dependency_remap` | Remap Asset Dependencies | visible | high | yes | yes | pre, post | core | `README.md#tool-coverage` |
| `unreal.editor.engine_version` | Editor Engine Version | visible | read_only | no | no | - | core | `README.md#tool-coverage` |
| `unreal.editor.python_runtime_info` | Editor Python Runtime Info | visible | critical | no | no | process | manual | `README.md#tool-coverage` |
| `unreal.editor_set_map_game_mode` | Set Map GameMode | visible | medium | yes | no | pre, post | core | `README.md#tool-coverage` |
| `unreal.editor_status` | Editor Status | visible | read_only | no | no | - | core | `README.md#tool-coverage` |
| `unreal.execute_console_command` | Execute Console Command | visible | critical | yes | no | pre, post | missing | `README.md#tool-coverage` |
| `unreal.execute_python` | Execute Python | visible | critical | yes | no | pre, post | missing | `README.md#tool-coverage` |
| `unreal.execute_python_file` | Execute Python File | visible | critical | yes | no | pre, post, process | missing | `README.md#tool-coverage` |
| `unreal.list_assets` | List Assets | visible | read_only | no | no | - | missing | `README.md#tool-coverage` |
| `unreal.list_maps` | List Maps | visible | read_only | no | no | - | missing | `README.md#tool-coverage` |
| `unreal.list_selected_assets` | List Selected Assets | visible | read_only | no | no | - | missing | `README.md#tool-coverage` |
| `unreal.map_check` | Map Check | visible | read_only | no | no | - | missing | `README.md#tool-coverage` |
| `unreal.open_asset` | Open Asset | visible | low | no | no | - | missing | `README.md#tool-coverage` |
| `unreal.open_map` | Open Map | visible | low | no | no | - | missing | `README.md#tool-coverage` |
| `unreal.project_settings_get` | Get Project Setting | visible | low | no | no | - | core | `README.md#tool-coverage` |
| `unreal.project_version_migration` | Project Version Migration | visible | high | yes | yes | pre, post | core | `README.md#tool-coverage` |
| `unreal.redirector_fixup` | Fix Up Redirectors | visible | high | yes | yes | pre, post | core | `README.md#tool-coverage` |
| `unreal.save_dirty_packages` | Save Dirty Packages | visible | medium | yes | no | pre, post | missing | `README.md#tool-coverage` |
| `unreal.start_pie` | Start PIE | visible | low | no | no | - | missing | `README.md#tool-coverage` |
| `unreal.stop_pie` | Stop PIE | visible | low | no | no | - | missing | `README.md#tool-coverage` |
| `unreal.sync_content_browser` | Sync Content Browser | visible | low | no | no | - | missing | `README.md#tool-coverage` |
| `unreal.tail_log` | Tail Editor Log | visible | read_only | no | no | - | missing | `README.md#tool-coverage` |

### material

| Tool | Title | Exposure | Risk | Write | Dry Run | Guards | Coverage | Docs |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| `unreal.material_instance_get_parameters` | Get Material Parameters | visible | read_only | no | no | - | category | `Docs/MaterialInstanceTools.md` |
| `unreal.material_instance_list` | List Material Instances | visible | read_only | no | no | - | category | `Docs/MaterialInstanceTools.md` |
| `unreal.material_instance_set_scalar` | Set Material Scalar | visible | medium | yes | no | pre, post | category | `Docs/MaterialInstanceTools.md` |
| `unreal.material_instance_set_vector` | Set Material Vector | visible | medium | yes | no | pre, post | category | `Docs/MaterialInstanceTools.md` |

### memory

| Tool | Title | Exposure | Risk | Write | Dry Run | Guards | Coverage | Docs |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| `unreal.project_memory_delete` | Delete Project Memory Entry | visible | medium | yes | yes | pre, post, memory | missing | `README.md#tool-coverage` |
| `unreal.project_memory_edit` | Edit Project Memory Entry | visible | medium | yes | yes | pre, post, memory | missing | `README.md#tool-coverage` |
| `unreal.project_memory_read` | Read Project Memory Entry | visible | read_only | no | no | - | missing | `README.md#tool-coverage` |
| `unreal.project_memory_view` | View Project Memory | visible | read_only | no | no | - | missing | `README.md#tool-coverage` |
| `unreal.project_memory_write` | Write Project Memory Entry | visible | medium | yes | no | pre, post, memory | missing | `README.md#tool-coverage` |

### scaffold

| Tool | Title | Exposure | Risk | Write | Dry Run | Guards | Coverage | Docs |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| `unreal.scaffold_autobattler_ai` | Scaffold Autobattler AI | legacy_hidden | medium | yes | no | pre, post | missing | `README.md#tool-coverage` |
| `unreal.scaffold_economy_system` | Scaffold Economy System | legacy_hidden | medium | yes | no | pre, post | missing | `README.md#tool-coverage` |
| `unreal.scaffold_mcp_tool` | Scaffold MCP Tool | visible | medium | yes | no | pre, post | missing | `README.md#tool-coverage` |
| `unreal.scaffold_recipe` | Scaffold High-Level Recipe | visible | low | yes | no | pre, post, memory | category | `README.md#tool-coverage` |
| `unreal.scaffold_result_ui` | Scaffold Result UI | legacy_hidden | medium | yes | no | pre, post | missing | `README.md#tool-coverage` |
| `unreal.scaffold_round_system` | Scaffold Round System | legacy_hidden | medium | yes | no | pre, post | missing | `README.md#tool-coverage` |
| `unreal.scaffold_shop_system` | Scaffold Shop System | legacy_hidden | medium | yes | no | pre, post | missing | `README.md#tool-coverage` |

### self-extension

| Tool | Title | Exposure | Risk | Write | Dry Run | Guards | Coverage | Docs |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| `unreal.capture_project_snapshot` | Capture Project Snapshot | visible | low | yes | no | pre, post | category | `README.md#tool-coverage` |
| `unreal.diff_project_snapshot` | Diff Project Snapshot | visible | read_only | no | no | - | category | `README.md#tool-coverage` |
| `unreal.install_doctor` | Run Install Doctor | visible | low | no | no | - | core | `Docs/DeploymentTroubleshooting.md` |
| `unreal.knowledge_eval_run` | Run Knowledge Evals | visible | read_only | no | no | - | category | `Docs/KnowledgeRag.md` |
| `unreal.knowledge_index_refresh` | Refresh Knowledge Index | visible | low | yes | yes | pre, post | category | `Docs/KnowledgeRag.md` |
| `unreal.knowledge_search` | Search Knowledge Index | visible | read_only | no | no | - | category | `Docs/KnowledgeRag.md` |
| `unreal.mcp_apply_scaffold` | Apply MCP Scaffold | legacy_hidden | high | yes | yes | pre, post, lock | category | `README.md#tool-coverage` |
| `unreal.mcp_backup_project_state` | Backup Project State | visible | high | yes | yes | pre, post, lock | category | `README.md#tool-coverage` |
| `unreal.mcp_build_client` | Build Client Target | visible | medium | no | no | lock, process, memory | manual | `README.md#tool-coverage` |
| `unreal.mcp_build_editor` | Build Editor Target | visible | high | no | no | pre, post, lock, build, process, memory | missing | `README.md#tool-coverage` |
| `unreal.mcp_build_game` | Build Game Target | visible | medium | no | no | lock, process, memory | manual | `README.md#tool-coverage` |
| `unreal.mcp_build_packaged` | Build Packaged Target | visible | high | no | no | lock, process, memory | manual | `README.md#tool-coverage` |
| `unreal.mcp_build_server` | Build Server Target | visible | medium | no | no | lock, process, memory | manual | `README.md#tool-coverage` |
| `unreal.mcp_classify_error` | Classify MCP Error | visible | read_only | no | no | - | category | `README.md#tool-coverage` |
| `unreal.mcp_clean_test_artifacts` | Clean Test Artifacts | visible | high | yes | yes | pre, post, lock | missing | `README.md#tool-coverage` |
| `unreal.mcp_compile_error_fix_plan` | Plan Compile Error Fix | visible | medium | yes | yes | pre, post, lock | missing | `README.md#tool-coverage` |
| `unreal.mcp_diff_last_apply` | Diff Last Apply | visible | read_only | no | no | - | category | `README.md#tool-coverage` |
| `unreal.mcp_extension_pipeline` | Run Extension Pipeline | legacy_hidden | critical | yes | no | pre, post, lock, build, process, restart, memory | missing | `README.md#tool-coverage` |
| `unreal.mcp_generate_tests` | Generate MCP Tests | visible | medium | yes | yes | pre, post, lock | missing | `README.md#tool-coverage` |
| `unreal.mcp_inspect_scaffold` | Inspect MCP Scaffold | visible | read_only | no | no | - | category | `README.md#tool-coverage` |
| `unreal.mcp_list_scaffolds` | List MCP Scaffolds | visible | read_only | no | no | - | missing | `README.md#tool-coverage` |
| `unreal.mcp_lock_extension_session` | Lock Extension Session | visible | low | no | no | pre, post, lock | missing | `README.md#tool-coverage` |
| `unreal.mcp_patch_scaffold_patch` | Patch Scaffold Fragment | visible | high | yes | yes | pre, post, lock | category | `README.md#tool-coverage` |
| `unreal.mcp_patch_scaffold_snippet` | Patch Scaffold Snippet | legacy_hidden | high | yes | yes | pre, post, lock | missing | `README.md#tool-coverage` |
| `unreal.mcp_pipeline_status` | Get Pipeline Status | visible | read_only | no | no | - | missing | `README.md#tool-coverage` |
| `unreal.mcp_prepare_test_sandbox` | Prepare MCP Test Sandbox | visible | medium | yes | yes | pre, post | category | `README.md#tool-coverage` |
| `unreal.mcp_rollback_last_extension` | Rollback Last Extension | visible | high | yes | yes | pre, post, lock | manual | `README.md#tool-coverage` |
| `unreal.mcp_rollback_to_manifest` | Rollback To Manifest | visible | high | yes | yes | pre, post, lock | missing | `README.md#tool-coverage` |
| `unreal.mcp_run_test_suite` | Run MCP Test Suite | visible | medium | yes | no | pre, post, lock, memory | missing | `README.md#tool-coverage` |
| `unreal.mcp_run_tool_test` | Run MCP Tool Test | visible | medium | yes | no | pre, post, lock, memory | missing | `README.md#tool-coverage` |
| `unreal.mcp_supervisor_install` | Install MCP Supervisor | visible | high | yes | yes | pre, post, lock, process | category | `README.md#tool-coverage` |
| `unreal.mcp_tool_audit` | Audit MCP Tools | visible | read_only | no | no | - | core | `README.md#tool-coverage` |
| `unreal.mcp_user_registry_reload` | Reload User Tool Registry | visible | low | yes | yes | pre, post, lock | core | `Tools/UnrealMcpSkills/mcp-self-extension/SKILL.md` |
| `unreal.mcp_user_tool_smoke` | Smoke-test User Tool | visible | low | yes | yes | pre, post, lock | core | `Tools/UnrealMcpSkills/mcp-self-extension/SKILL.md` |
| `unreal.mcp_validate_cpp_patch` | Validate C++ Patch | visible | read_only | no | no | - | category | `README.md#tool-coverage` |
| `unreal.mcp_validate_cpp_snippet` | Validate C++ Snippet | legacy_hidden | read_only | no | no | - | missing | `README.md#tool-coverage` |
| `unreal.mcp_validate_tool_schema` | Validate Tool Schema | visible | read_only | no | no | - | core | `README.md#tool-coverage` |
| `unreal.mcp_workbench_status` | MCP Workbench Status | visible | read_only | no | no | - | core | `README.md#tool-coverage` |
| `unreal.preview_change_plan` | Preview Change Plan | visible | read_only | no | no | - | category | `README.md#tool-coverage` |
| `unreal.tool_gap_analyze` | Analyze MCP Tool Gap | visible | read_only | no | no | - | category | `Docs/KnowledgeRag.md` |
| `unreal.tool_recommend` | Recommend MCP Tools | visible | read_only | no | no | - | category | `Docs/KnowledgeRag.md` |
| `unreal.tools.export_package` | Export Tool Package | visible | medium | yes | yes | pre, post | category | `Docs/SelfExtensionPipeline.md#tool-sharing` |
| `unreal.tools.import_package` | Import Tool Package | visible | high | yes | yes | pre, post, lock | category | `Docs/SelfExtensionPipeline.md#tool-sharing` |
| `unreal.tools.list_exportable` | List Exportable Tools | visible | read_only | no | no | - | category | `Docs/SelfExtensionPipeline.md#tool-sharing` |
| `unreal.user_registry_introspect` | Introspect User Registry | visible | read_only | no | no | - | category | `Docs/SelfExtensionPipeline.md` |
| `unreal.verify_task_outcome` | Verify Task Outcome | visible | read_only | no | no | - | category | `README.md#tool-coverage` |
| `unreal.workflow_recommend` | Recommend MCP Workflow | visible | read_only | no | no | - | category | `Docs/KnowledgeRag.md` |
| `unreal.workflow_run` | Run MCP Workflow | visible | high | yes | yes | pre, post, memory | category | `README.md#tool-coverage` |

### skills

| Tool | Title | Exposure | Risk | Write | Dry Run | Guards | Coverage | Docs |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| `unreal.chat_label_active_task` | Label Active Chat Task | visible | low | no | no | - | category | `README.md#tool-coverage` |
| `unreal.skill_activity_status` | Get Skill Activity Status | visible | read_only | no | no | - | core | `README.md#tool-coverage` |
| `unreal.skill_apply` | Apply Skill | visible | medium | yes | no | pre, post, memory | missing | `README.md#tool-coverage` |
| `unreal.skill_distill_from_activity` | Distill Skill From Activity | visible | medium | yes | no | pre, post | core | `README.md#tool-coverage` |
| `unreal.skill_list` | List Skills | visible | read_only | no | no | - | core | `README.md#tool-coverage` |
| `unreal.skill_promote_draft` | Promote Skill Draft | visible | high | yes | yes | pre, post, lock | core | `README.md#tool-coverage` |
| `unreal.skill_read` | Read Skill | visible | read_only | no | no | - | missing | `README.md#tool-coverage` |
| `unreal.skill_recording_start` | Start Skill Recording | visible | medium | yes | no | pre, post | core | `README.md#tool-coverage` |
| `unreal.skill_recording_stop` | Stop Skill Recording | visible | medium | yes | no | pre, post | core | `README.md#tool-coverage` |
| `unreal.skill_save_draft` | Save Skill Draft | visible | medium | yes | no | pre, post | core | `README.md#tool-coverage` |

### task-atlas

| Tool | Title | Exposure | Risk | Write | Dry Run | Guards | Coverage | Docs |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| `unreal.activity_log_annotate` | Annotate Activity Log | visible | low | yes | no | pre, post | category | `Docs/TaskAtlas.md` |
| `unreal.task_atlas_delete_made_tool` | Delete Task Atlas Made Tool | visible | high | yes | yes | pre, post, lock | category | `Docs/TaskAtlas.md` |
| `unreal.task_atlas_list_made_tools` | List Task Atlas Made Tools | visible | read_only | no | no | - | category | `Docs/TaskAtlas.md` |
| `unreal.task_atlas_make_composite` | Make Task Atlas Composite | visible | high | yes | yes | pre, post, lock | category | `Docs/TaskAtlas.md` |
| `unreal.task_atlas_promote_to_rag` | Promote Task Atlas Task To RAG | visible | medium | yes | yes | pre, post | category | `Docs/TaskAtlas.md` |
| `unreal.task_atlas_smoke_made_tool` | Smoke Task Atlas Made Tool | visible | high | yes | yes | pre, post, lock | category | `Docs/TaskAtlas.md` |
| `unreal.task_describe` | Describe Task Atlas Task | visible | read_only | no | no | - | category | `Docs/TaskAtlas.md` |
| `unreal.task_label_backfill` | Backfill Task Atlas Labels | visible | medium | yes | yes | pre, post | category | `Docs/TaskAtlas.md` |
| `unreal.task_list` | List Task Atlas Tasks | visible | read_only | no | no | - | category | `Docs/TaskAtlas.md` |
| `unreal.task_pin` | Pin Task Atlas Task | visible | low | yes | no | pre, post | category | `Docs/TaskAtlas.md` |
| `unreal.task_rate` | Rate Task Atlas Task | visible | low | yes | no | pre, post | category | `Docs/TaskAtlas.md` |

### verification

| Tool | Title | Exposure | Risk | Write | Dry Run | Guards | Coverage | Docs |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| `unreal.automation_list` | List Automation Tests | visible | read_only | no | no | - | category | `Docs/Verification.md` |
| `unreal.automation_report` | Get Automation Run Report | visible | read_only | no | no | - | category | `Docs/Verification.md` |
| `unreal.automation_run` | Run Automation Test | visible | medium | yes | no | pre, post | category | `Docs/Verification.md` |
| `unreal.editor_diagnostics` | Read Editor Diagnostics | visible | read_only | no | no | - | category | `Docs/Verification.md` |
| `unreal.pie_input_probe` | Probe PIE Input Movement | visible | medium | no | no | pre, post, lock | core | `Docs/Verification.md` |
| `unreal.pie_smoke` | Run PIE Smoke | visible | high | yes | no | pre, post | category | `Docs/Verification.md` |
| `unreal.verify_player_controls` | Verify Player Controls | visible | medium | no | no | pre, post, lock | category | `Tools/UnrealMcpToolDocs/verification/verify_player_controls.md` |
| `unreal.verify_viewport_widgets` | Verify Viewport Widgets | visible | read_only | no | no | - | core | `Docs/Verification.md` |

### widget

| Tool | Title | Exposure | Risk | Write | Dry Run | Guards | Coverage | Docs |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| `unreal.widget_add` | Add Widget | visible | medium | yes | no | pre, post | category | `README.md#tool-coverage` |
| `unreal.widget_bind_blueprint_variable` | Bind Widget Variable | visible | medium | yes | no | pre, post | missing | `README.md#tool-coverage` |
| `unreal.widget_bind_event` | Bind Widget Event | visible | medium | yes | no | pre, post | missing | `README.md#tool-coverage` |
| `unreal.widget_build_template` | Build Widget Template | visible | medium | yes | no | pre, post | category | `README.md#tool-coverage` |
| `unreal.widget_delete` | Delete Widget | visible | high | yes | no | pre, post | category | `Plugins/UnrealMcp/README.md#editor-action-tools` |
| `unreal.widget_dump_tree` | Dump Widget Tree | visible | read_only | no | no | - | category | `README.md#tool-coverage` |
| `unreal.widget_duplicate` | Duplicate Widget | visible | medium | yes | no | pre, post | category | `Plugins/UnrealMcp/README.md#editor-action-tools` |
| `unreal.widget_remove` | Remove Widget | visible | medium | yes | no | pre, post | missing | `README.md#tool-coverage` |
| `unreal.widget_rename` | Rename Widget | visible | medium | yes | no | pre, post | category | `Plugins/UnrealMcp/README.md#editor-action-tools` |
| `unreal.widget_reorder_child` | Reorder Widget | visible | low | yes | no | pre, post | category | `Plugins/UnrealMcp/README.md#editor-action-tools` |
| `unreal.widget_set_property` | Set Widget Property | visible | medium | yes | no | pre, post | category | `README.md#tool-coverage` |
| `unreal.widget_set_slot_layout` | Set Widget Slot Layout | visible | medium | yes | no | pre, post | missing | `README.md#tool-coverage` |

## Legacy Hidden Entries

- `unreal.batch_set_actor_properties` - Batch Set Actor Properties (actors, medium). Reason: Explicit registry: actors tool with controlled write or workflow side effects.
- `unreal.mcp_apply_scaffold` - Apply MCP Scaffold (self-extension, high). Reason: Explicit registry: high-impact write/build/rollback/destructive editor operation.
- `unreal.mcp_extension_pipeline` - Run Extension Pipeline (self-extension, critical). Reason: Explicit registry: can execute dynamic code or orchestrate source/build/restart self-extension.
- `unreal.mcp_patch_scaffold_snippet` - Patch Scaffold Snippet (self-extension, high). Reason: Explicit registry: high-impact write/build/rollback/destructive editor operation.
- `unreal.mcp_validate_cpp_snippet` - Validate C++ Snippet (self-extension, read_only). Reason: Explicit registry: read-only inspection, audit, status, schema validation, memory read, or skill read tool.
- `unreal.scaffold_autobattler_ai` - Scaffold Autobattler AI (scaffold, medium). Reason: Legacy gameplay/demo scaffold retained for direct compatibility; hidden from AI-facing tools/list so UEAtelier can focus on the MCP self-extension loop.
- `unreal.scaffold_economy_system` - Scaffold Economy System (scaffold, medium). Reason: Legacy gameplay/demo scaffold retained for direct compatibility; hidden from AI-facing tools/list so UEAtelier can focus on the MCP self-extension loop.
- `unreal.scaffold_result_ui` - Scaffold Result UI (scaffold, medium). Reason: Legacy gameplay/demo scaffold retained for direct compatibility; hidden from AI-facing tools/list so UEAtelier can focus on the MCP self-extension loop.
- `unreal.scaffold_round_system` - Scaffold Round System (scaffold, medium). Reason: Legacy gameplay/demo scaffold retained for direct compatibility; hidden from AI-facing tools/list so UEAtelier can focus on the MCP self-extension loop.
- `unreal.scaffold_shop_system` - Scaffold Shop System (scaffold, medium). Reason: Legacy gameplay/demo scaffold retained for direct compatibility; hidden from AI-facing tools/list so UEAtelier can focus on the MCP self-extension loop.
- `unreal.spawn_actor` - Spawn Actor (actors, medium). Reason: Explicit registry: actors tool with controlled write or workflow side effects.
- `unreal.spawn_actor_batch` - Spawn Actor Batch (actors, medium). Reason: Explicit registry: actors tool with controlled write or workflow side effects.
