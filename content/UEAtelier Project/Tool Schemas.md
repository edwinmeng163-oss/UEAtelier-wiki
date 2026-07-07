---
title: "Tool Schemas"
source_repo: "https://github.com/edwinmeng163-oss/UEAtelier"
source_branch: "main"
source_head: "421440e"
source_describe: "v0.34.0-1-g421440e"
generated: "2026-07-04"
---
# Tool Schemas

This page summarizes each registry entry and its top-level input schema. It is intentionally compact: nested property details remain in the source registry JSON and generated tool docs.

## actors

### `unreal.actor_get_property`

- Title: Get Actor Property
- Category/risk/exposure: `actors` / `low` / `visible`
- Handler: `unreal.actor_get_property`
- Description: Reads a single UProperty value from a named actor, including supported dot-paths through struct or object properties.
- Required fields: `actorPath`, `propertyName`
- Top-level properties: `actorPath*`:string, `propertyName*`:string
- Docs: `README.md#tool-coverage`

### `unreal.actor_get_transform`

- Title: Get Actor Transform
- Category/risk/exposure: `actors` / `low` / `visible`
- Handler: `unreal.actor_get_transform`
- Description: Reads an actor transform in world or relative space without mutating editor state.
- Required fields: `actorPath`
- Top-level properties: `actorPath*`:string, `space`:string
- Docs: `README.md#tool-coverage`

### `unreal.actor_set_auto_possess`

- Title: Set Actor Auto Possess
- Category/risk/exposure: `actors` / `medium` / `visible`
- Handler: `unreal.actor_set_auto_possess`
- Description: Sets a Pawn actor's Auto Possess Player setting in the current editor world and returns readback evidence.
- Required fields: `actorName`
- Top-level properties: `actorName*`:string, `autoPossessPlayer`:string
- Docs: `README.md#tool-coverage`

### `unreal.batch_configure_static_mesh_actors`

- Title: Configure Static Mesh Actors
- Category/risk/exposure: `actors` / `medium` / `visible`
- Handler: `unreal.batch_configure_static_mesh_actors`
- Description: Applies static mesh component settings to a batch of actors, such as mesh, material, mobility, collision, and visibility fields when supplied.
- Required fields: none
- Top-level properties: `filter`:string, `classPath`:string, `paths`:array, `selectedOnly`:boolean, `limit`:number, `staticMeshPath`:string, `materialPath`:string, `materialSlot`:number
- Docs: `README.md#tool-coverage`

### `unreal.batch_set_actor_properties`

- Title: Batch Set Actor Properties
- Category/risk/exposure: `actors` / `medium` / `legacy_hidden`
- Handler: `unreal.batch_set_actor_properties`
- Description: Sets arbitrary property maps on multiple actors in one call; legacy flexible path for bulk edits when fixed-schema actor tools are not enough.
- Required fields: none
- Top-level properties: none
- Docs: `README.md#tool-coverage`

### `unreal.batch_set_actor_scale`

- Title: Batch Set Actor Scale
- Category/risk/exposure: `actors` / `medium` / `visible`
- Handler: `unreal.batch_set_actor_scale`
- Description: Sets scale values for multiple named actors in one batch, mutating their transforms in the current editor world.
- Required fields: none
- Top-level properties: `filter`:string, `classPath`:string, `paths`:array, `selectedOnly`:boolean, `limit`:number, `scaleX`:number, `scaleY`:number, `scaleZ`:number
- Docs: `README.md#tool-coverage`

### `unreal.batch_set_actor_tags`

- Title: Batch Set Actor Tags
- Category/risk/exposure: `actors` / `medium` / `visible`
- Handler: `unreal.batch_set_actor_tags`
- Description: Replaces or appends actor tags for multiple named actors so later selection, layout, or verification can target the same group.
- Required fields: none
- Top-level properties: `filter`:string, `classPath`:string, `paths`:array, `selectedOnly`:boolean, `limit`:number, `tags`:array, `replaceExisting`:boolean
- Docs: `README.md#tool-coverage`

### `unreal.batch_set_point_light_properties`

- Title: Batch Set Point Lights
- Category/risk/exposure: `actors` / `medium` / `visible`
- Handler: `unreal.batch_set_point_light_properties`
- Description: Configures point-light properties such as intensity, color, attenuation, and visibility on matching light actors.
- Required fields: none
- Top-level properties: `filter`:string, `classPath`:string, `paths`:array, `selectedOnly`:boolean, `limit`:number, `intensity`:number, `attenuationRadius`:number, `sourceRadius`:number, `softSourceRadius`:number, `temperature`:number, `useTemperature`:boolean, `castShadows`:boolean, `visible`:boolean
- Docs: `README.md#tool-coverage`

### `unreal.clear_level_environment`

- Title: Clear Level Environment
- Category/risk/exposure: `actors` / `high` / `visible`
- Handler: `unreal.clear_level_environment`
- Description: Deletes common level environment actors such as sky, fog, lights, and floor meshes to prepare a clean sandbox; destructive in the open map.
- Required fields: none
- Top-level properties: `filter`:string, `classPath`:string, `paths`:array, `dryRun`:boolean, `confirmClearAll`:boolean, `clearSelection`:boolean, `maxPasses`:number, `limit`:number
- Docs: `README.md#tool-coverage`

### `unreal.destroy_selected_actors`

- Title: Destroy Selected Actors
- Category/risk/exposure: `actors` / `high` / `visible`
- Handler: `unreal.destroy_selected_actors`
- Description: Deletes the currently selected level actors from the open editor world.
- Required fields: none
- Top-level properties: none
- Docs: `README.md#tool-coverage`

### `unreal.layout_actors_circle`

- Title: Layout Actors In Circle
- Category/risk/exposure: `actors` / `medium` / `visible`
- Handler: `unreal.layout_actors_circle`
- Description: Arranges selected actors evenly around a circle using the requested origin, radius, and orientation.
- Required fields: none
- Top-level properties: `filter`:string, `classPath`:string, `paths`:array, `selectedOnly`:boolean, `limit`:number, `radius`:number, `startAngleDegrees`:number, `arcDegrees`:number, `centerX`:number, `centerY`:number, `centerZ`:number, `alignYawToCenter`:boolean, `yawOffset`:number
- Docs: `README.md#tool-coverage`

### `unreal.layout_actors_grid`

- Title: Layout Actors In Grid
- Category/risk/exposure: `actors` / `medium` / `visible`
- Handler: `unreal.layout_actors_grid`
- Description: Arranges selected actors into a grid with fixed spacing from a requested origin.
- Required fields: none
- Top-level properties: `filter`:string, `classPath`:string, `paths`:array, `selectedOnly`:boolean, `limit`:number, `columns`:number, `spacingX`:number, `spacingY`:number, `spacingZ`:number, `startX`:number, `startY`:number, `startZ`:number, `pitch`:number, `yaw`:number, `roll`:number
- Docs: `README.md#tool-coverage`

### `unreal.list_level_actors`

- Title: List Level Actors
- Category/risk/exposure: `actors` / `read_only` / `visible`
- Handler: `unreal.list_level_actors`
- Description: Lists actors in the current editor world with labels, classes, paths, transforms, and selection state for read-back planning.
- Required fields: none
- Top-level properties: `filter`:string, `classPath`:string, `limit`:number
- Docs: `README.md#tool-coverage`

### `unreal.list_selected_actors`

- Title: List Selected Actors
- Category/risk/exposure: `actors` / `read_only` / `visible`
- Handler: `unreal.list_selected_actors`
- Description: Lists the actors currently selected in the level editor.
- Required fields: none
- Top-level properties: none
- Docs: `README.md#tool-coverage`

### `unreal.select_actors`

- Title: Select Actors
- Category/risk/exposure: `actors` / `low` / `visible`
- Handler: `unreal.select_actors`
- Description: Selects actors in the level editor by label or path, optionally replacing the current selection.
- Required fields: none
- Top-level properties: `filter`:string, `classPath`:string, `paths`:array, `clearSelection`:boolean, `limit`:number
- Docs: `README.md#tool-coverage`

### `unreal.set_actor_transform`

- Title: Set Actor Transform
- Category/risk/exposure: `actors` / `medium` / `visible`
- Handler: `unreal.set_actor_transform`
- Description: Sets the world transform of a named actor, including location, rotation, and scale fields supplied by the caller.
- Required fields: none
- Top-level properties: `actorPath`:string, `actorLabel`:string, `x`:number, `y`:number, `z`:number, `pitch`:number, `yaw`:number, `roll`:number
- Docs: `README.md#tool-coverage`

### `unreal.spawn_actor`

- Title: Spawn Actor
- Category/risk/exposure: `actors` / `medium` / `legacy_hidden`
- Handler: `unreal.spawn_actor`
- Description: Spawns an actor from a class path with optional transform and freeform property overrides; legacy flexible path for expert use.
- Required fields: none
- Top-level properties: none
- Docs: `README.md#tool-coverage`

### `unreal.spawn_actor_basic`

- Title: Spawn Actor (Basic)
- Category/risk/exposure: `actors` / `medium` / `visible`
- Handler: `unreal.spawn_actor`
- Description: Spawns a fixed-schema actor at the requested transform; safer than the legacy freeform unreal.spawn_actor path.
- Required fields: none
- Top-level properties: `classPath`:string, `x`:number, `y`:number, `z`:number, `pitch`:number, `yaw`:number, `roll`:number, `sx`:number, `sy`:number, `sz`:number, `label`:string
- Docs: `README.md#tool-coverage`

### `unreal.spawn_actor_batch`

- Title: Spawn Actor Batch
- Category/risk/exposure: `actors` / `medium` / `legacy_hidden`
- Handler: `unreal.spawn_actor_batch`
- Description: Spawns multiple actors from class paths with optional transforms and property overrides; legacy flexible batch path.
- Required fields: none
- Top-level properties: none
- Docs: `README.md#tool-coverage`

### `unreal.spawn_actor_batch_basic`

- Title: Spawn Actor Batch (Basic)
- Category/risk/exposure: `actors` / `medium` / `visible`
- Handler: `unreal.spawn_actor_batch`
- Description: Spawns multiple fixed-schema actors in one call using class paths, labels, and transforms without freeform property maps.
- Required fields: none
- Top-level properties: `classPath`:string, `selectSpawned`:boolean, `items`:array
- Docs: `README.md#tool-coverage`

### `unreal.spawn_static_mesh_actor`

- Title: Spawn Static Mesh Actor
- Category/risk/exposure: `actors` / `medium` / `visible`
- Handler: `unreal.spawn_static_mesh_actor`
- Description: Spawns a StaticMeshActor with a mesh asset, transform, label, and optional material assignment in the current level.
- Required fields: none
- Top-level properties: `x`:number, `y`:number, `z`:number, `pitch`:number, `yaw`:number, `roll`:number, `sx`:number, `sy`:number, `sz`:number, `label`:string, `staticMeshPath`:string, `materialPath`:string, `materialSlot`:number
- Docs: `README.md#tool-coverage`

## blueprint

### `unreal.bp_add_branch_node`

- Title: Add Branch Node
- Category/risk/exposure: `blueprint` / `medium` / `visible`
- Handler: `unreal.bp_add_branch_node`
- Description: Adds a Branch node to a Blueprint graph at the requested location for conditional execution flow.
- Required fields: none
- Top-level properties: `blueprintPath`:string, `graphName`:string, `x`:number, `y`:number
- Docs: `README.md#tool-coverage`

### `unreal.bp_add_call_function_node`

- Title: Add Function Call Node
- Category/risk/exposure: `blueprint` / `medium` / `visible`
- Handler: `unreal.bp_add_call_function_node`
- Description: Adds a call node for a target function to a Blueprint graph so later pin-connection tools can wire it.
- Required fields: none
- Top-level properties: `blueprintPath`:string, `graphName`:string, `functionClassPath`:string, `functionName`:string, `x`:number, `y`:number
- Docs: `README.md#tool-coverage`

### `unreal.bp_add_component`

- Title: Add Blueprint Component
- Category/risk/exposure: `blueprint` / `medium` / `visible`
- Handler: `unreal.bp_add_component`
- Description: Adds a component to a Blueprint SimpleConstructionScript and optionally attaches it under a named parent component.
- Required fields: `blueprintPath`, `componentClass`, `componentName`
- Top-level properties: `blueprintPath*`:string, `componentClass*`:string, `componentName*`:string, `attachParentComponentName`:string
- Docs: `README.md#tool-coverage`

### `unreal.bp_add_event_node`

- Title: Add Event Node
- Category/risk/exposure: `blueprint` / `medium` / `visible`
- Handler: `unreal.bp_add_event_node`
- Description: Adds a custom event or class override event node to a Blueprint graph and marks the asset dirty.
- Required fields: none
- Top-level properties: `blueprintPath`:string, `graphName`:string, `eventName`:string, `ownerClassPath`:string, `x`:number, `y`:number
- Docs: `README.md#tool-coverage`

### `unreal.bp_add_for_each_node`

- Title: Add ForEach Node
- Category/risk/exposure: `blueprint` / `medium` / `visible`
- Handler: `unreal.bp_add_for_each_node`
- Description: Adds a StandardMacros ForEach-style macro node to a Blueprint graph for array iteration flow.
- Required fields: none
- Top-level properties: `blueprintPath`:string, `graphName`:string, `macroName`:string, `x`:number, `y`:number
- Docs: `README.md#tool-coverage`

### `unreal.bp_add_function`

- Title: Add Blueprint Function
- Category/risk/exposure: `blueprint` / `medium` / `visible`
- Handler: `unreal.bp_add_function`
- Description: Creates a user function graph on a Blueprint, or reports the existing graph when the name already exists.
- Required fields: none
- Top-level properties: `blueprintPath`:string, `functionName`:string
- Docs: `README.md#tool-coverage`

### `unreal.bp_add_gameplay_node`

- Title: Add Blueprint Gameplay Node
- Category/risk/exposure: `blueprint` / `medium` / `visible`
- Handler: `unreal.bp_add_gameplay_node`
- Description: Adds one of the supported Character/Pawn gameplay helper nodes to a Blueprint EventGraph. The graphName field is accepted for forward compatibility, but only EventGraph is supported in this release.
- Required fields: `blueprintPath`, `nodeKind`
- Top-level properties: `blueprintPath*`:string, `graphName`:string, `nodeKind*`:string, `x`:number, `y`:number
- Docs: `README.md#tool-coverage`

### `unreal.bp_add_input_action_event_node`

- Title: Add Input Action Event Node
- Category/risk/exposure: `blueprint` / `medium` / `visible`
- Handler: `unreal.bp_add_input_action_event_node`
- Description: Adds a legacy InputAction event node to a Blueprint EventGraph. The graphName field is accepted for forward compatibility, but only EventGraph is supported in this release.
- Required fields: `blueprintPath`, `actionName`
- Top-level properties: `blueprintPath*`:string, `graphName`:string, `actionName*`:string, `x`:number, `y`:number
- Docs: `README.md#tool-coverage`

### `unreal.bp_add_input_axis_event_node`

- Title: Add Input Axis Event Node
- Category/risk/exposure: `blueprint` / `medium` / `visible`
- Handler: `unreal.bp_add_input_axis_event_node`
- Description: Adds a legacy InputAxis event node to a Blueprint EventGraph. The graphName field is accepted for forward compatibility, but only EventGraph is supported in this release.
- Required fields: `blueprintPath`, `axisName`
- Top-level properties: `blueprintPath*`:string, `graphName`:string, `axisName*`:string, `x`:number, `y`:number
- Docs: `README.md#tool-coverage`

### `unreal.bp_add_macro_graph`

- Title: Add Blueprint Macro Graph
- Category/risk/exposure: `blueprint` / `low` / `visible`
- Handler: `unreal.bp_add_macro_graph`
- Description: Creates a user macro graph on a Blueprint after fixed-name validation and collision checks.
- Required fields: `blueprintPath`, `macroName`
- Top-level properties: `blueprintPath*`:string, `macroName*`:string
- Docs: `README.md#tool-coverage`

### `unreal.bp_add_variable`

- Title: Add Blueprint Variable
- Category/risk/exposure: `blueprint` / `medium` / `visible`
- Handler: `unreal.bp_add_variable`
- Description: Adds a typed member variable to a Blueprint with an optional default value and marks the asset structurally modified.
- Required fields: none
- Top-level properties: `blueprintPath`:string, `name`:string, `pinCategory`:string, `pinSubCategory`:string, `subCategoryObjectPath`:string, `containerType`:string, `defaultValue`:string
- Docs: `README.md#tool-coverage`

### `unreal.bp_arrange_graph`

- Title: Arrange Blueprint Graph
- Category/risk/exposure: `blueprint` / `medium` / `visible`
- Handler: `unreal.bp_arrange_graph`
- Description: Repositions nodes in a Blueprint graph into a simple grid layout using caller-supplied spacing and column count.
- Required fields: none
- Top-level properties: `blueprintPath`:string, `graphName`:string, `originX`:number, `originY`:number, `columnSpacing`:number, `rowSpacing`:number, `columns`:number
- Docs: `README.md#tool-coverage`

### `unreal.bp_compile_save`

- Title: Compile And Save Blueprint
- Category/risk/exposure: `blueprint` / `medium` / `visible`
- Handler: `unreal.bp_compile_save`
- Description: Compiles a Blueprint and optionally saves its package, returning compile status and save evidence.
- Required fields: none
- Top-level properties: `blueprintPath`:string, `savePackage`:boolean
- Docs: `README.md#tool-coverage`

### `unreal.bp_connect_pins`

- Title: Connect Blueprint Pins
- Category/risk/exposure: `blueprint` / `medium` / `visible`
- Handler: `unreal.bp_connect_pins`
- Description: Connects two Blueprint node pins by node GUID and pin name after K2 schema validation.
- Required fields: none
- Top-level properties: `blueprintPath`:string, `graphName`:string, `fromNodeGuid`:string, `fromPin`:string, `toNodeGuid`:string, `toPin`:string
- Docs: `README.md#tool-coverage`

### `unreal.bp_delete_function`

- Title: Delete Blueprint Function
- Category/risk/exposure: `blueprint` / `low` / `visible`
- Handler: `unreal.bp_delete_function`
- Description: Deletes a user function graph and reports caller nodes found in the same Blueprint.
- Required fields: `blueprintPath`, `functionName`
- Top-level properties: `blueprintPath*`:string, `functionName*`:string
- Docs: `README.md#tool-coverage`

### `unreal.bp_delete_macro_graph`

- Title: Delete Blueprint Macro Graph
- Category/risk/exposure: `blueprint` / `medium` / `visible`
- Handler: `unreal.bp_delete_macro_graph`
- Description: Deletes a Blueprint macro graph after checking local macro instance references unless force=true.
- Required fields: `blueprintPath`, `macroName`
- Top-level properties: `blueprintPath*`:string, `macroName*`:string, `force`:boolean
- Docs: `README.md#tool-coverage`

### `unreal.bp_delete_node`

- Title: Delete Blueprint Node
- Category/risk/exposure: `blueprint` / `low` / `visible`
- Handler: `unreal.bp_delete_node`
- Description: Deletes a user-deletable Blueprint graph node by NodeGuid and reports the severed pin links.
- Required fields: `blueprintPath`, `nodeGuid`
- Top-level properties: `blueprintPath*`:string, `graphName`:string, `nodeGuid*`:string
- Docs: `README.md#tool-coverage`

### `unreal.bp_delete_variable`

- Title: Delete Blueprint Variable
- Category/risk/exposure: `blueprint` / `low` / `visible`
- Handler: `unreal.bp_delete_variable`
- Description: Deletes a Blueprint member variable after checking local reference nodes unless force=true.
- Required fields: `blueprintPath`, `variableName`
- Top-level properties: `blueprintPath*`:string, `variableName*`:string, `force`:boolean
- Docs: `README.md#tool-coverage`

### `unreal.bp_interface_add`

- Title: Add Blueprint Interface
- Category/risk/exposure: `blueprint` / `medium` / `visible`
- Handler: `unreal.bp_interface_add`
- Description: Adds a Blueprint-implementable interface to a Blueprint and conforms exposed interface function graphs.
- Required fields: `blueprintPath`, `interfacePath`
- Top-level properties: `blueprintPath*`:string, `interfacePath*`:string
- Docs: `README.md#tool-coverage`

### `unreal.bp_interface_remove`

- Title: Remove Blueprint Interface
- Category/risk/exposure: `blueprint` / `medium` / `visible`
- Handler: `unreal.bp_interface_remove`
- Description: Removes an implemented interface from a Blueprint and optionally preserves its function graphs.
- Required fields: `blueprintPath`, `interfacePath`
- Top-level properties: `blueprintPath*`:string, `interfacePath*`:string, `preserveFunctions`:boolean
- Docs: `README.md#tool-coverage`

### `unreal.bp_list_graph_nodes`

- Title: List Blueprint Graph Nodes
- Category/risk/exposure: `blueprint` / `read_only` / `visible`
- Handler: `unreal.bp_list_graph_nodes`
- Description: Read-only inspection of Blueprint graphs, nodes, pins, and existing links.
- Required fields: none
- Top-level properties: `blueprintPath`:string, `graphName`:string, `includePins`:boolean
- Docs: `README.md#tool-coverage`

### `unreal.bp_rename_function`

- Title: Rename Blueprint Function
- Category/risk/exposure: `blueprint` / `medium` / `visible`
- Handler: `unreal.bp_rename_function`
- Description: Renames a user function graph and rewrites local caller nodes.
- Required fields: `blueprintPath`, `oldName`, `newName`
- Top-level properties: `blueprintPath*`:string, `oldName*`:string, `newName*`:string
- Docs: `README.md#tool-coverage`

### `unreal.bp_rename_variable`

- Title: Rename Blueprint Variable
- Category/risk/exposure: `blueprint` / `medium` / `visible`
- Handler: `unreal.bp_rename_variable`
- Description: Renames a Blueprint member variable and rewrites local graph references.
- Required fields: `blueprintPath`, `oldName`, `newName`
- Top-level properties: `blueprintPath*`:string, `oldName*`:string, `newName*`:string
- Docs: `README.md#tool-coverage`

### `unreal.bp_set_class_default`

- Title: Set Blueprint Class Default
- Category/risk/exposure: `blueprint` / `medium` / `visible`
- Handler: `unreal.bp_set_class_default`
- Description: Sets an allowlisted editable property on a Blueprint generated class default object and returns a readback value.
- Required fields: `blueprintPath`, `propertyName`, `value`
- Top-level properties: `blueprintPath*`:string, `propertyName*`:string, `value*`:string
- Docs: `README.md#tool-coverage`

### `unreal.bp_set_component_property`

- Title: Set Blueprint Component Property
- Category/risk/exposure: `blueprint` / `medium` / `visible`
- Handler: `unreal.bp_set_component_property`
- Description: Sets an allowlisted editable property on a Blueprint component template and returns a readback value.
- Required fields: `blueprintPath`, `componentName`, `propertyName`, `value`
- Top-level properties: `blueprintPath*`:string, `componentName*`:string, `propertyName*`:string, `value*`:string
- Docs: `README.md#tool-coverage`

### `unreal.bp_set_pin_default`

- Title: Set Blueprint Pin Default
- Category/risk/exposure: `blueprint` / `medium` / `visible`
- Handler: `unreal.bp_set_pin_default`
- Description: Sets the default value for a Blueprint node pin by graph, node GUID, and pin name.
- Required fields: none
- Top-level properties: `blueprintPath`:string, `graphName`:string, `nodeGuid`:string, `pinName`:string, `value`:string
- Docs: `README.md#tool-coverage`

### `unreal.bp_trace_pin_connections`

- Title: Trace Blueprint Pin Connections
- Category/risk/exposure: `blueprint` / `read_only` / `visible`
- Handler: `unreal.bp_trace_pin_connections`
- Description: Read-only inspection of pin defaults and linked node/pin targets for one Blueprint node.
- Required fields: none
- Top-level properties: `blueprintPath`:string, `graphName`:string, `nodeGuid`:string, `pinName`:string
- Docs: `README.md#tool-coverage`

### `unreal.compile_blueprint`

- Title: Compile Blueprint
- Category/risk/exposure: `blueprint` / `medium` / `visible`
- Handler: `unreal.compile_blueprint`
- Description: Compiles one Blueprint asset by path and returns its resulting Blueprint status without saving the package.
- Required fields: none
- Top-level properties: `path`:string
- Docs: `README.md#tool-coverage`

### `unreal.compile_blueprints_in_path`

- Title: Compile Blueprints In Path
- Category/risk/exposure: `blueprint` / `medium` / `visible`
- Handler: `unreal.compile_blueprints_in_path`
- Description: Compiles Blueprint assets under a Content Browser path, with recursive scanning and a limit to bound large projects.
- Required fields: none
- Top-level properties: `path`:string, `recursive`:boolean, `limit`:number
- Docs: `README.md#tool-coverage`

### `unreal.create_blueprint_class`

- Title: Create Blueprint Class
- Category/risk/exposure: `blueprint` / `medium` / `visible`
- Handler: `unreal.create_blueprint_class`
- Description: Creates a Blueprint asset from a parent class, optionally compiling it and opening the editor after creation.
- Required fields: none
- Top-level properties: `assetPath`:string, `parentClass`:string, `openAfterCreate`:boolean, `compile`:boolean
- Docs: `README.md#tool-coverage`

## code

### `unreal.code_apply_change`

- Title: Apply Code Change
- Category/risk/exposure: `code` / `high` / `visible`
- Handler: `unreal.code_apply_change`
- Description: Applies a previously previewed code change with dry-run, backup, lock, manifest, raw-byte write, and postcheck semantics.
- Required fields: `previewId`
- Top-level properties: `previewId*`:string, `dryRun`:boolean, `confirmHighRisk`:boolean, `expectedSha256PerFile`:object
- Docs: `README.md#tool-coverage`

### `unreal.code_list_files`

- Title: List Code Files
- Category/risk/exposure: `code` / `read_only` / `visible`
- Handler: `unreal.code_list_files`
- Description: Lists readable project code files within bounded scopes while excluding runtime, generated, Saved, and Content directories.
- Required fields: none
- Top-level properties: `scope`:string, `extensions`:array, `glob`:string, `maxResults`:number
- Docs: `README.md#tool-coverage`

### `unreal.code_preview_change`

- Title: Preview Code Change
- Category/risk/exposure: `code` / `low` / `visible`
- Handler: `unreal.code_preview_change`
- Description: Previews structured project code edits with sha, path-policy, byte-exact match, and expected post-edit hash checks.
- Required fields: `edits`
- Top-level properties: `edits*`:array
- Docs: `README.md#tool-coverage`

### `unreal.code_read_file`

- Title: Read Code File
- Category/risk/exposure: `code` / `read_only` / `visible`
- Handler: `unreal.code_read_file`
- Description: Reads a bounded slice of a readable project code file and returns the whole-file sha256 for later edit validation.
- Required fields: `path`
- Top-level properties: `path*`:string, `startLine`:number, `lineCount`:number, `maxChars`:number
- Docs: `README.md#tool-coverage`

### `unreal.code_rollback_change`

- Title: Rollback Code Change
- Category/risk/exposure: `code` / `high` / `visible`
- Handler: `unreal.code_rollback_change`
- Description: Rolls back a code edit manifest with dry-run, drift detection, lock, raw-byte restore/delete, and postcheck semantics.
- Required fields: none
- Top-level properties: `editId`:string, `manifestPath`:string, `dryRun`:boolean, `force`:boolean
- Docs: `README.md#tool-coverage`

### `unreal.code_search`

- Title: Search Code
- Category/risk/exposure: `code` / `read_only` / `visible`
- Handler: `unreal.code_search`
- Description: Searches readable project code files using bounded literal, regex, or filename matching.
- Required fields: `query`
- Top-level properties: `query*`:string, `mode`:string, `scope`:string, `extensions`:array, `contextLines`:number, `maxMatches`:number
- Docs: `README.md#tool-coverage`

### `unreal.code_workspace_status`

- Title: Code Workspace Status
- Category/risk/exposure: `code` / `read_only` / `visible`
- Handler: `unreal.code_workspace_status`
- Description: Returns Code tool workspace roots, path policy, extension allowlists, latest manifest, and extension lock status.
- Required fields: none
- Top-level properties: none
- Docs: `README.md#tool-coverage`

## editor

### `unreal.asset_move`

- Title: Move Asset
- Category/risk/exposure: `editor` / `medium` / `visible`
- Handler: `unreal.asset_move`
- Description: Moves or renames one asset to a new /Game package path using Unreal AssetTools, with optional dry-run planning.
- Required fields: `sourcePath`, `destinationPath`
- Top-level properties: `sourcePath*`:string, `destinationPath*`:string, `createRedirector`:boolean, `dryRun`:boolean
- Docs: `README.md#tool-coverage`

### `unreal.chat_history_tail`

- Title: Tail Chat Panel History
- Category/risk/exposure: `editor` / `read_only` / `visible`
- Handler: `unreal.chat_history_tail`
- Description: Read the last N entries from the editor Chat Panel persisted history (Saved/UnrealMcp/ChatHistory.json).
- Required fields: none
- Top-level properties: `count`:integer, `sessionId`:string
- Docs: `Docs/ChatSync.md`

### `unreal.chat_inject_user_input`

- Title: Inject Chat Panel User Input
- Category/risk/exposure: `editor` / `medium` / `visible`
- Handler: `unreal.chat_inject_user_input`
- Description: Inject a user prompt into the editor Chat Panel as if the user typed Enter, triggering the normal AI assistant flow.
- Required fields: `text`
- Top-level properties: `text*`:string, `sessionId`:string, `dryRun`:boolean
- Docs: `Docs/ChatSync.md`

### `unreal.chat_tool_log_tail`

- Title: Tail Chat Tool Log
- Category/risk/exposure: `editor` / `read_only` / `visible`
- Handler: `unreal.chat_tool_log_tail`
- Description: Read the last N tool_call events from the current ActivityLog session (the events shown beside the chat dialog).
- Required fields: none
- Top-level properties: `count`:integer, `sessionId`:string
- Docs: `Docs/ChatSync.md`

### `unreal.configure_player_input`

- Title: Configure Player Input
- Category/risk/exposure: `editor` / `medium` / `visible`
- Handler: `unreal.configure_player_input`
- Description: Configures standard and arbitrary legacy player-control input mappings for legacy input or an Enhanced Input mapping context, defaulting to dry-run diagnostics.
- Required fields: none
- Top-level properties: `inputSystem`:string, `profile`:string, `mappings`:object, `enhancedInputMappingContextPath`:string, `dryRun`:boolean
- Docs: `Tools/UnrealMcpToolDocs/editor/configure_player_input.md`

### `unreal.dependency_remap`

- Title: Remap Asset Dependencies
- Category/risk/exposure: `editor` / `high` / `visible`
- Handler: `unreal.dependency_remap`
- Description: Replaces references to one asset with references to another asset using ObjectTools consolidation without deleting the source by default.
- Required fields: `fromAssetPath`, `toAssetPath`
- Top-level properties: `fromAssetPath*`:string, `toAssetPath*`:string, `dryRun`:boolean, `deleteSourceAfter`:boolean
- Docs: `README.md#tool-coverage`

### `unreal.editor.engine_version`

- Title: Editor Engine Version
- Category/risk/exposure: `editor` / `read_only` / `visible`
- Handler: `unreal.editor.engine_version`
- Description: Returns the running Unreal Editor engine version as structured major, minor, patch, and version_string fields.
- Required fields: none
- Top-level properties: none
- Docs: `README.md#tool-coverage`

### `unreal.editor.python_runtime_info`

- Title: Editor Python Runtime Info
- Category/risk/exposure: `editor` / `critical` / `visible`
- Handler: `unreal.editor.python_runtime_info`
- Description: Reports read-only Python runtime interpreter, module-count, and Unreal module details to confirm the python implementation track is working.
- Required fields: none
- Top-level properties: none
- Docs: `README.md#tool-coverage`

### `unreal.editor_set_map_game_mode`

- Title: Set Map GameMode
- Category/risk/exposure: `editor` / `medium` / `visible`
- Handler: `unreal.editor_set_map_game_mode`
- Description: Sets either the current world WorldSettings GameMode override or the project default GameMode and returns readback evidence.
- Required fields: `gameModeClassPath`
- Top-level properties: `gameModeClassPath*`:string, `scope`:string
- Docs: `README.md#tool-coverage`

### `unreal.editor_status`

- Title: Editor Status
- Category/risk/exposure: `editor` / `read_only` / `visible`
- Handler: `unreal.editor_status`
- Description: Returns the current Unreal Editor status, map, selected counts, engine version, and PIE state.
- Required fields: none
- Top-level properties: none
- Docs: `README.md#tool-coverage`

### `unreal.execute_console_command`

- Title: Execute Console Command
- Category/risk/exposure: `editor` / `critical` / `visible`
- Handler: `unreal.execute_console_command`
- Description: Runs an Unreal console command in the editor session; use only for explicit high-trust operations.
- Required fields: none
- Top-level properties: `command`:string, `target`:string
- Docs: `README.md#tool-coverage`

### `unreal.execute_python`

- Title: Execute Python
- Category/risk/exposure: `editor` / `critical` / `visible`
- Handler: `unreal.execute_python`
- Description: Executes a Python command string inside Unreal Editor and returns captured output or errors.
- Required fields: none
- Top-level properties: `command`:string, `mode`:string, `scope`:string, `autoMode`:boolean, `forceEnable`:boolean, `unattended`:boolean
- Docs: `README.md#tool-coverage`

### `unreal.execute_python_file`

- Title: Execute Python File
- Category/risk/exposure: `editor` / `critical` / `visible`
- Handler: `unreal.execute_python_file`
- Description: Runs a project-local Python file through the Unreal Python runtime and returns execution output.
- Required fields: none
- Top-level properties: `scriptPath`:string, `args`:array, `scope`:string, `forceEnable`:boolean, `unattended`:boolean, `allowOutsideProject`:boolean
- Docs: `README.md#tool-coverage`

### `unreal.list_assets`

- Title: List Assets
- Category/risk/exposure: `editor` / `read_only` / `visible`
- Handler: `unreal.list_assets`
- Description: Lists assets under a Content Browser path with optional class filtering for read-only project inspection.
- Required fields: none
- Top-level properties: `path`:string, `recursive`:boolean, `classPath`:string, `limit`:number
- Docs: `README.md#tool-coverage`

### `unreal.list_maps`

- Title: List Maps
- Category/risk/exposure: `editor` / `read_only` / `visible`
- Handler: `unreal.list_maps`
- Description: Lists all map assets under /Game.
- Required fields: none
- Top-level properties: none
- Docs: `README.md#tool-coverage`

### `unreal.list_selected_assets`

- Title: List Selected Assets
- Category/risk/exposure: `editor` / `read_only` / `visible`
- Handler: `unreal.list_selected_assets`
- Description: Lists the assets currently selected in the Content Browser.
- Required fields: none
- Top-level properties: none
- Docs: `README.md#tool-coverage`

### `unreal.map_check`

- Title: Map Check
- Category/risk/exposure: `editor` / `read_only` / `visible`
- Handler: `unreal.map_check`
- Description: Runs the editor map check for the current level and returns reported errors, warnings, and info messages.
- Required fields: none
- Top-level properties: none
- Docs: `README.md#tool-coverage`

### `unreal.open_asset`

- Title: Open Asset
- Category/risk/exposure: `editor` / `low` / `visible`
- Handler: `unreal.open_asset`
- Description: Opens an asset in the Unreal Editor asset editor by Content Browser or object path.
- Required fields: none
- Top-level properties: `path`:string
- Docs: `README.md#tool-coverage`

### `unreal.open_map`

- Title: Open Map
- Category/risk/exposure: `editor` / `low` / `visible`
- Handler: `unreal.open_map`
- Description: Opens a map asset in the editor, changing the active level when the path resolves.
- Required fields: none
- Top-level properties: `path`:string
- Docs: `README.md#tool-coverage`

### `unreal.project_settings_get`

- Title: Get Project Setting
- Category/risk/exposure: `editor` / `low` / `visible`
- Handler: `unreal.project_settings_get`
- Description: Reads a project setting; pass `effective=true` to get the current runtime/PIE value when available (else returns the configured default).
- Required fields: `category`, `key`
- Top-level properties: `category*`:string, `key*`:string, `effective`:boolean
- Docs: `README.md#tool-coverage`

### `unreal.project_version_migration`

- Title: Project Version Migration
- Category/risk/exposure: `editor` / `high` / `visible`
- Handler: `unreal.project_version_migration`
- Description: Updates a .uproject EngineAssociation between UE 5.6 and UE 5.7 and reports remaining manual rebuild steps.
- Required fields: `targetEngineVersion`
- Top-level properties: `targetEngineVersion*`:string, `dryRun`:boolean, `projectFilePath`:string
- Docs: `README.md#tool-coverage`

### `unreal.redirector_fixup`

- Title: Fix Up Redirectors
- Category/risk/exposure: `editor` / `high` / `visible`
- Handler: `unreal.redirector_fixup`
- Description: Scans a /Game subtree for UObjectRedirector assets and runs AssetTools fixup to rewrite referencers and remove fixed redirectors.
- Required fields: none
- Top-level properties: `path`:string, `dryRun`:boolean, `recursive`:boolean, `failOnAnyError`:boolean
- Docs: `README.md#tool-coverage`

### `unreal.save_dirty_packages`

- Title: Save Dirty Packages
- Category/risk/exposure: `editor` / `medium` / `visible`
- Handler: `unreal.save_dirty_packages`
- Description: Saves currently dirty packages in the editor, optionally constrained by path or package type.
- Required fields: none
- Top-level properties: `saveMaps`:boolean, `saveAssets`:boolean
- Docs: `README.md#tool-coverage`

### `unreal.start_pie`

- Title: Start PIE
- Category/risk/exposure: `editor` / `low` / `visible`
- Handler: `unreal.start_pie`
- Description: Starts Play-In-Editor for the current map and returns the resulting PIE state.
- Required fields: none
- Top-level properties: `simulate`:boolean
- Docs: `README.md#tool-coverage`

### `unreal.stop_pie`

- Title: Stop PIE
- Category/risk/exposure: `editor` / `low` / `visible`
- Handler: `unreal.stop_pie`
- Description: Stops any active Play-In-Editor session and returns the resulting editor state.
- Required fields: none
- Top-level properties: none
- Docs: `README.md#tool-coverage`

### `unreal.sync_content_browser`

- Title: Sync Content Browser
- Category/risk/exposure: `editor` / `low` / `visible`
- Handler: `unreal.sync_content_browser`
- Description: Selects and focuses one or more assets in the Content Browser without changing their contents.
- Required fields: none
- Top-level properties: `path`:string
- Docs: `README.md#tool-coverage`

### `unreal.tail_log`

- Title: Tail Editor Log
- Category/risk/exposure: `editor` / `read_only` / `visible`
- Handler: `unreal.tail_log`
- Description: Reads the tail of the current Unreal Editor log for recent warnings, errors, and MCP diagnostics.
- Required fields: none
- Top-level properties: `lines`:number, `contains`:string
- Docs: `README.md#tool-coverage`

## material

### `unreal.material_instance_get_parameters`

- Title: Get Material Parameters
- Category/risk/exposure: `material` / `read_only` / `visible`
- Handler: `unreal.material_instance_get_parameters`
- Description: Reads scalar, vector, texture, and static switch parameters from a Material Instance. Use this before changing brightness, roughness, color, tint, emissive color, or other material parameters.
- Required fields: `materialInstancePath`
- Top-level properties: `materialInstancePath*`:string, `includeInherited`:boolean
- Docs: `Docs/MaterialInstanceTools.md`

### `unreal.material_instance_list`

- Title: List Material Instances
- Category/risk/exposure: `material` / `read_only` / `visible`
- Handler: `unreal.material_instance_list`
- Description: Lists Material Instance assets under a content path with parent material and class metadata. Use this first when a user asks to edit a mesh material, make a material redder, or find editable material instances.
- Required fields: none
- Top-level properties: `contentRoot`:string, `recursive`:boolean, `classFilter`:string, `limit`:number
- Docs: `Docs/MaterialInstanceTools.md`

### `unreal.material_instance_set_scalar`

- Title: Set Material Scalar
- Category/risk/exposure: `material` / `medium` / `visible`
- Handler: `unreal.material_instance_set_scalar`
- Description: Sets a scalar parameter on a Material Instance Constant with strict numeric input and previous-value readback. Use this for brightness, roughness, metallic, opacity, intensity, or other numeric material edits.
- Required fields: `materialInstancePath`, `parameterName`, `value`
- Top-level properties: `materialInstancePath*`:string, `parameterName*`:string, `value*`:number, `save`:boolean
- Docs: `Docs/MaterialInstanceTools.md`

### `unreal.material_instance_set_vector`

- Title: Set Material Vector
- Category/risk/exposure: `material` / `medium` / `visible`
- Handler: `unreal.material_instance_set_vector`
- Description: Sets an RGBA vector parameter on a Material Instance Constant with strict object input and previous-value readback. Use this for color, tint, emissive color, or make this material redder requests.
- Required fields: `materialInstancePath`, `parameterName`, `value`
- Top-level properties: `materialInstancePath*`:string, `parameterName*`:string, `value*`:object, `save`:boolean
- Docs: `Docs/MaterialInstanceTools.md`

## memory

### `unreal.project_memory_delete`

- Title: Delete Project Memory Entry
- Category/risk/exposure: `memory` / `medium` / `visible`
- Handler: `unreal.project_memory_delete`
- Description: Deletes a key from persistent Saved/UnrealMcp project memory used for cross-session AI handoff.
- Required fields: none
- Top-level properties: `key`:string, `dryRun`:boolean
- Docs: `README.md#tool-coverage`

### `unreal.project_memory_edit`

- Title: Edit Project Memory Entry
- Category/risk/exposure: `memory` / `medium` / `visible`
- Handler: `unreal.project_memory_edit`
- Description: Updates an existing project memory entry with revised JSON or text content for cross-session handoff.
- Required fields: none
- Top-level properties: `key`:string, `summary`:string, `status`:string, `nextStep`:string, `contentJson`:string, `contentMode`:string, `tags`:array, `tagsMode`:string, `createIfMissing`:boolean, `dryRun`:boolean
- Docs: `README.md#tool-coverage`

### `unreal.project_memory_read`

- Title: Read Project Memory Entry
- Category/risk/exposure: `memory` / `read_only` / `visible`
- Handler: `unreal.project_memory_read`
- Description: Reads one persistent project memory key from Saved/UnrealMcp without mutating state.
- Required fields: none
- Top-level properties: `key`:string, `includeContent`:boolean
- Docs: `README.md#tool-coverage`

### `unreal.project_memory_view`

- Title: View Project Memory
- Category/risk/exposure: `memory` / `read_only` / `visible`
- Handler: `unreal.project_memory_view`
- Description: Lists project memory keys and compact values stored under Saved/UnrealMcp for local continuity.
- Required fields: none
- Top-level properties: `keyFilter`:string, `status`:string, `tag`:string, `includeContent`:boolean, `maxEntries`:number, `sortDescending`:boolean
- Docs: `README.md#tool-coverage`

### `unreal.project_memory_write`

- Title: Write Project Memory Entry
- Category/risk/exposure: `memory` / `medium` / `visible`
- Handler: `unreal.project_memory_write`
- Description: Writes a persistent project memory key under Saved/UnrealMcp so future sessions can resume context.
- Required fields: none
- Top-level properties: `key`:string, `summary`:string, `status`:string, `nextStep`:string, `contentJson`:string, `tags`:array
- Docs: `README.md#tool-coverage`

## scaffold

### `unreal.scaffold_autobattler_ai`

- Title: Scaffold Autobattler AI
- Category/risk/exposure: `scaffold` / `medium` / `legacy_hidden`
- Handler: `unreal.scaffold_autobattler_ai`
- Description: Legacy gameplay scaffold that creates autobattler AI content; retained for compatibility and hidden from default AI tool lists.
- Required fields: none
- Top-level properties: none
- Docs: `README.md#tool-coverage`

### `unreal.scaffold_economy_system`

- Title: Scaffold Economy System
- Category/risk/exposure: `scaffold` / `medium` / `legacy_hidden`
- Handler: `unreal.scaffold_economy_system`
- Description: Legacy gameplay scaffold that creates economy-system content; retained for compatibility and hidden from default AI tool lists.
- Required fields: none
- Top-level properties: none
- Docs: `README.md#tool-coverage`

### `unreal.scaffold_mcp_tool`

- Title: Scaffold MCP Tool
- Category/risk/exposure: `scaffold` / `medium` / `visible`
- Handler: `unreal.scaffold_mcp_tool`
- Description: Generates a project-local Python user-tool scaffold for AI self-extension; core C++ scaffolds are manual/developer-only.
- Required fields: none
- Top-level properties: `toolName`:string, `title`:string, `description`:string, `outputRoot`:string, `argumentSchemaJson`:string, `exampleArgumentsJson`:string, `implementationNotes`:string, `implementationTrack`:string, `category`:string, `riskLevel`:string, `requiresWrite`:boolean, `requiresBuild`:boolean, `requiresExternalProcess`:boolean, `requiresRestart`:boolean, `requiresProjectMemory`:boolean, `requiresLock`:boolean, `dryRunSupport`:boolean, `overwrite`:boolean, `includeChatCommandSnippet`:boolean, `includeLegacyCompatibility`:boolean
- Docs: `README.md#tool-coverage`

### `unreal.scaffold_recipe`

- Title: Scaffold High-Level Recipe
- Category/risk/exposure: `scaffold` / `low` / `visible`
- Handler: `unreal.scaffold_recipe`
- Description: Prepares a bounded high-level editor recipe with ordered tools, verification gates, and optional chat.active_task memory handoff.
- Required fields: none
- Top-level properties: `recipeName`:string, `rootPath`:string, `taskName`:string, `writeMemory`:boolean, `memoryKey`:string, `includeToolCalls`:boolean
- Docs: `README.md#tool-coverage`

### `unreal.scaffold_result_ui`

- Title: Scaffold Result UI
- Category/risk/exposure: `scaffold` / `medium` / `legacy_hidden`
- Handler: `unreal.scaffold_result_ui`
- Description: Legacy gameplay scaffold that creates result-screen UI content; retained for compatibility and hidden from default AI tool lists.
- Required fields: none
- Top-level properties: none
- Docs: `README.md#tool-coverage`

### `unreal.scaffold_round_system`

- Title: Scaffold Round System
- Category/risk/exposure: `scaffold` / `medium` / `legacy_hidden`
- Handler: `unreal.scaffold_round_system`
- Description: Legacy gameplay scaffold that creates round-system content; retained for compatibility and hidden from default AI tool lists.
- Required fields: none
- Top-level properties: none
- Docs: `README.md#tool-coverage`

### `unreal.scaffold_shop_system`

- Title: Scaffold Shop System
- Category/risk/exposure: `scaffold` / `medium` / `legacy_hidden`
- Handler: `unreal.scaffold_shop_system`
- Description: Legacy gameplay scaffold that creates shop-system content; retained for compatibility and hidden from default AI tool lists.
- Required fields: none
- Top-level properties: none
- Docs: `README.md#tool-coverage`

## self-extension

### `unreal.capture_project_snapshot`

- Title: Capture Project Snapshot
- Category/risk/exposure: `self-extension` / `low` / `visible`
- Handler: `unreal.capture_project_snapshot`
- Description: Captures a project state snapshot for later objective diffing of actors, assets, Blueprints, widgets, memory, and skills.
- Required fields: none
- Top-level properties: `snapshotName`:string, `assetPath`:string, `includeActors`:boolean, `includeAssets`:boolean, `includeBlueprints`:boolean, `includeWidgets`:boolean, `includeMemory`:boolean, `includeSkills`:boolean, `actorLimit`:number, `assetLimit`:number
- Docs: `README.md#tool-coverage`

### `unreal.diff_project_snapshot`

- Title: Diff Project Snapshot
- Category/risk/exposure: `self-extension` / `read_only` / `visible`
- Handler: `unreal.diff_project_snapshot`
- Description: Diffs two captured project snapshots and reports added/removed identities by area.
- Required fields: none
- Top-level properties: `beforeSnapshotPath`:string, `afterSnapshotPath`:string
- Docs: `README.md#tool-coverage`

### `unreal.install_doctor`

- Title: Run Install Doctor
- Category/risk/exposure: `self-extension` / `low` / `visible`
- Handler: `unreal.install_doctor`
- Description: Runs read-only runtime install checks for registry mirrors, schemas, Python plugin state, MCP ports, and duplicate UnrealMcp plugin copies.
- Required fields: none
- Top-level properties: `includeDetails`:boolean, `refresh`:boolean, `deepScanEnginePlugins`:boolean
- Docs: `Docs/DeploymentTroubleshooting.md`

### `unreal.knowledge_eval_run`

- Title: Run Knowledge Evals
- Category/risk/exposure: `self-extension` / `read_only` / `visible`
- Handler: `unreal.knowledge_eval_run`
- Description: Runs the offline RAG retrieval evaluation suite under Tools/UnrealMcpKnowledge/Evals/ and reports recall plus per-question diagnostics.
- Required fields: none
- Top-level properties: `evalPath`:string, `refreshIndex`:boolean, `includeDetails`:boolean, `limit`:number
- Docs: `Docs/KnowledgeRag.md`

### `unreal.knowledge_index_refresh`

- Title: Refresh Knowledge Index
- Category/risk/exposure: `self-extension` / `low` / `visible`
- Handler: `unreal.knowledge_index_refresh`
- Description: Rebuilds the local Saved/UnrealMcp/KnowledgeIndex/ JSONL index from fetched docs plus visible tool metadata for RAG retrieval; call after upstream docs change or after a registry-changing chunk.
- Required fields: none
- Top-level properties: `sourceRoot`:string, `indexRoot`:string, `includeOfficialDocs`:boolean, `includeVersionedDocs`:boolean, `includeToolRegistry`:boolean, `skipLowContent`:boolean, `maxCards`:number, `maxChunkChars`:number, `chunkOverlapChars`:number, `dryRun`:boolean
- Docs: `Docs/KnowledgeRag.md`

### `unreal.knowledge_search`

- Title: Search Knowledge Index
- Category/risk/exposure: `self-extension` / `read_only` / `visible`
- Handler: `unreal.knowledge_search`
- Description: Reads the local KnowledgeCard index and returns compact source-linked cards; use for planning, tool choice, and verification, and call unreal.knowledge_index_refresh first if the index is missing.
- Required fields: none
- Top-level properties: `query`:string, `categories`:array, `indexRoot`:string, `limit`:number, `maxExcerptChars`:number, `includeText`:boolean
- Docs: `Docs/KnowledgeRag.md`

### `unreal.mcp_apply_scaffold`

- Title: Apply MCP Scaffold
- Category/risk/exposure: `self-extension` / `high` / `legacy_hidden`
- Handler: `unreal.mcp_apply_scaffold`
- Description: Validates and applies a generated MCP scaffold to plugin source and registry files, with dry-run and backup manifest support.
- Required fields: none
- Top-level properties: `toolName`:string, `scaffoldDir`:string, `outputRoot`:string, `dryRun`:boolean, `applyChatCommand`:boolean, `createBackup`:boolean, `validatePatches`:boolean, `allowUnsafePatches`:boolean, `targetDiffPreviewLines`:number
- Docs: `README.md#tool-coverage`

### `unreal.mcp_backup_project_state`

- Title: Backup Project State
- Category/risk/exposure: `self-extension` / `high` / `visible`
- Handler: `unreal.mcp_backup_project_state`
- Description: Writes a backup snapshot of relevant project and plugin files under Saved/UnrealMcp for rollback-oriented workflows.
- Required fields: none
- Top-level properties: `label`:string, `reason`:string, `includeSource`:boolean, `includeReadmes`:boolean, `includeProjectMemory`:boolean, `includeManifests`:boolean, `includeBuildLogs`:boolean, `dryRun`:boolean
- Docs: `README.md#tool-coverage`

### `unreal.mcp_build_client`

- Title: Build Client Target
- Category/risk/exposure: `self-extension` / `medium` / `visible`
- Handler: `unreal.mcp_build_client`
- Description: Runs Unreal Build Tool for the dedicated-client target, captures logs, parses errors, and writes build status memory.
- Required fields: none
- Top-level properties: `target`:string, `platform`:string, `configuration`:string, `extraArgs`:string, `toolName`:string, `testRequestPath`:string, `testsDir`:string, `scaffoldDir`:string, `memoryKey`:string, `writeProjectMemory`:boolean
- Docs: `README.md#tool-coverage`

### `unreal.mcp_build_editor`

- Title: Build Editor Target
- Category/risk/exposure: `self-extension` / `high` / `visible`
- Handler: `unreal.mcp_build_editor`
- Description: Runs Unreal Build Tool for the editor target, captures logs, parses errors, and writes build status memory.
- Required fields: none
- Top-level properties: `target`:string, `platform`:string, `configuration`:string, `extraArgs`:string, `toolName`:string, `testRequestPath`:string, `testsDir`:string, `scaffoldDir`:string, `memoryKey`:string, `writeProjectMemory`:boolean
- Docs: `README.md#tool-coverage`

### `unreal.mcp_build_game`

- Title: Build Game Target
- Category/risk/exposure: `self-extension` / `medium` / `visible`
- Handler: `unreal.mcp_build_game`
- Description: Runs Unreal Build Tool for the standalone game target, captures logs, parses errors, and writes build status memory.
- Required fields: none
- Top-level properties: `target`:string, `platform`:string, `configuration`:string, `extraArgs`:string, `toolName`:string, `testRequestPath`:string, `testsDir`:string, `scaffoldDir`:string, `memoryKey`:string, `writeProjectMemory`:boolean
- Docs: `README.md#tool-coverage`

### `unreal.mcp_build_packaged`

- Title: Build Packaged Target
- Category/risk/exposure: `self-extension` / `high` / `visible`
- Handler: `unreal.mcp_build_packaged`
- Description: Runs RunUAT BuildCookRun for a cooked packaged build under Saved/StagedBuilds or a project-local archive directory.
- Required fields: none
- Top-level properties: `platform`:string, `targetPlatform`:string, `configuration`:string, `extraArgs`:string, `outputDirectory`:string, `map`:string, `memoryKey`:string, `writeProjectMemory`:boolean
- Docs: `README.md#tool-coverage`

### `unreal.mcp_build_server`

- Title: Build Server Target
- Category/risk/exposure: `self-extension` / `medium` / `visible`
- Handler: `unreal.mcp_build_server`
- Description: Runs Unreal Build Tool for the dedicated-server target, captures logs, parses errors, and writes build status memory.
- Required fields: none
- Top-level properties: `target`:string, `platform`:string, `configuration`:string, `extraArgs`:string, `toolName`:string, `testRequestPath`:string, `testsDir`:string, `scaffoldDir`:string, `memoryKey`:string, `writeProjectMemory`:boolean
- Docs: `README.md#tool-coverage`

### `unreal.mcp_classify_error`

- Title: Classify MCP Error
- Category/risk/exposure: `self-extension` / `read_only` / `visible`
- Handler: `unreal.mcp_classify_error`
- Description: Classifies UBT, MCP, JSON schema, UE Python, HTTP endpoint, OpenAI API, and editor-state errors with next-step suggestions.
- Required fields: none
- Top-level properties: `text`:string, `logPath`:string, `tailLines`:number
- Docs: `README.md#tool-coverage`

### `unreal.mcp_clean_test_artifacts`

- Title: Clean Test Artifacts
- Category/risk/exposure: `self-extension` / `high` / `visible`
- Handler: `unreal.mcp_clean_test_artifacts`
- Description: Removes disposable MCP test artifacts from approved sandbox paths and can preview cleanup with dryRun.
- Required fields: none
- Top-level properties: `dryRun`:boolean, `cleanTestScaffolds`:boolean, `cleanTestRequests`:boolean, `cleanBuildLogs`:boolean, `cleanExtensionBackups`:boolean, `cleanProjectMemory`:boolean, `maxAgeDays`:number, `nameContains`:string
- Docs: `README.md#tool-coverage`

### `unreal.mcp_compile_error_fix_plan`

- Title: Plan Compile Error Fix
- Category/risk/exposure: `self-extension` / `medium` / `visible`
- Handler: `unreal.mcp_compile_error_fix_plan`
- Description: Reads compile error text or logs and returns a bounded fix plan for the MCP self-extension workflow.
- Required fields: none
- Top-level properties: `buildLogPath`:string, `maxErrors`:number, `contextLines`:number, `includeSourceContext`:boolean, `autoPatch`:boolean, `dryRun`:boolean
- Docs: `README.md#tool-coverage`

### `unreal.mcp_diff_last_apply`

- Title: Diff Last Apply
- Category/risk/exposure: `self-extension` / `read_only` / `visible`
- Handler: `unreal.mcp_diff_last_apply`
- Description: Reads the latest scaffold apply manifest and reports the source or registry file differences it recorded.
- Required fields: none
- Top-level properties: `manifestPath`:string, `maxPreviewLines`:number, `includeFullText`:boolean
- Docs: `README.md#tool-coverage`

### `unreal.mcp_extension_pipeline`

- Title: Run Extension Pipeline
- Category/risk/exposure: `self-extension` / `critical` / `legacy_hidden`
- Handler: `unreal.mcp_extension_pipeline`
- Description: Orchestrates scaffold validation, apply, build, restart handoff, and test execution for a new MCP tool.
- Required fields: none
- Top-level properties: `mode`:string, `toolName`:string, `scaffoldDir`:string, `outputRoot`:string, `schemaJson`:string, `testRequestPath`:string, `testsDir`:string, `memoryKey`:string, `task`:string, `apply`:boolean, `build`:boolean, `runTest`:boolean, `runTestSuite`:boolean, `generateTests`:boolean, `overwriteTests`:boolean, `dryRunOnly`:boolean, `applyChatCommand`:boolean, `createBackup`:boolean, `backupProjectState`:boolean, `writeProjectMemory`:boolean, `enforceGate`:boolean, `captureSnapshots`:boolean, `verifyOutcome`:boolean, `classifyFailures`:boolean
- Docs: `README.md#tool-coverage`

### `unreal.mcp_generate_tests`

- Title: Generate MCP Tests
- Category/risk/exposure: `self-extension` / `medium` / `visible`
- Handler: `unreal.mcp_generate_tests`
- Description: Generates a test request or suite scaffold for an MCP tool under the project test workspace.
- Required fields: none
- Top-level properties: `toolName`:string, `scaffoldDir`:string, `testsDir`:string, `outputRoot`:string, `schemaJson`:string, `overwrite`:boolean, `dryRun`:boolean
- Docs: `README.md#tool-coverage`

### `unreal.mcp_inspect_scaffold`

- Title: Inspect MCP Scaffold
- Category/risk/exposure: `self-extension` / `read_only` / `visible`
- Handler: `unreal.mcp_inspect_scaffold`
- Description: Reads a scaffold draft and reports metadata, patch fragments, dependencies, and integration readiness without writing source.
- Required fields: none
- Top-level properties: `toolName`:string, `scaffoldDir`:string, `outputRoot`:string, `includeFileText`:boolean, `maxPreviewChars`:number
- Docs: `README.md#tool-coverage`

### `unreal.mcp_list_scaffolds`

- Title: List MCP Scaffolds
- Category/risk/exposure: `self-extension` / `read_only` / `visible`
- Handler: `unreal.mcp_list_scaffolds`
- Description: Lists project-local and shared MCP scaffold drafts or starters so a user can choose one to inspect or apply.
- Required fields: none
- Top-level properties: `outputRoot`:string, `includeSavedTestScaffolds`:boolean, `toolNameFilter`:string, `readyOnly`:boolean, `includeFileText`:boolean, `maxPreviewChars`:number
- Docs: `README.md#tool-coverage`

### `unreal.mcp_lock_extension_session`

- Title: Lock Extension Session
- Category/risk/exposure: `self-extension` / `low` / `visible`
- Handler: `unreal.mcp_lock_extension_session`
- Description: Acquires or releases the local self-extension lock that gates high-risk scaffold apply, package import, and build actions.
- Required fields: none
- Top-level properties: `mode`:string, `sessionId`:string, `owner`:string, `reason`:string, `ttlSeconds`:number, `force`:boolean
- Docs: `README.md#tool-coverage`

### `unreal.mcp_patch_scaffold_patch`

- Title: Patch Scaffold Fragment
- Category/risk/exposure: `self-extension` / `high` / `visible`
- Handler: `unreal.mcp_patch_scaffold_patch`
- Description: Edits a generated scaffold patch fragment with validation and dry-run diff support; the tool is not registered until apply runs.
- Required fields: none
- Top-level properties: `toolName`:string, `scaffoldDir`:string, `outputRoot`:string, `patchName`:string, `snippetName`:string, `mode`:string, `newText`:string, `findText`:string, `replaceText`:string, `appendText`:string, `prependText`:string, `replaceAll`:boolean, `dryRun`:boolean, `createBackup`:boolean, `allowUnsafe`:boolean, `diffPreviewLines`:number
- Docs: `README.md#tool-coverage`

### `unreal.mcp_patch_scaffold_snippet`

- Title: Patch Scaffold Snippet
- Category/risk/exposure: `self-extension` / `high` / `legacy_hidden`
- Handler: `unreal.mcp_patch_scaffold_snippet`
- Description: Legacy alias for editing scaffold patch fragments; prefer unreal.mcp_patch_scaffold_patch for new workflows.
- Required fields: none
- Top-level properties: none
- Docs: `README.md#tool-coverage`

### `unreal.mcp_pipeline_status`

- Title: Get Pipeline Status
- Category/risk/exposure: `self-extension` / `read_only` / `visible`
- Handler: `unreal.mcp_pipeline_status`
- Description: Reads project memory, locks, manifests, build logs, and test state for the active MCP extension pipeline.
- Required fields: none
- Top-level properties: `memoryKey`:string, `includeAllMemory`:boolean, `includeBuildLogTail`:boolean, `buildLogTailLines`:number
- Docs: `README.md#tool-coverage`

### `unreal.mcp_prepare_test_sandbox`

- Title: Prepare MCP Test Sandbox
- Category/risk/exposure: `self-extension` / `medium` / `visible`
- Handler: `unreal.mcp_prepare_test_sandbox`
- Description: Creates or resets constrained /Game/__UEAtelier* asset and UEvolveMcpTest_* actor sandboxes for disposable happy-path tests.
- Required fields: none
- Top-level properties: `contentPath`:string, `reset`:boolean, `resetActors`:boolean, `actorLabelPrefix`:string, `dryRun`:boolean
- Docs: `README.md#tool-coverage`

### `unreal.mcp_rollback_last_extension`

- Title: Rollback Last Extension
- Category/risk/exposure: `self-extension` / `high` / `visible`
- Handler: `unreal.mcp_rollback_last_extension`
- Description: Rolls back the most recent applied scaffold using its backup manifest and reports restored files.
- Required fields: none
- Top-level properties: `manifestPath`:string, `dryRun`:boolean, `force`:boolean
- Docs: `README.md#tool-coverage`

### `unreal.mcp_rollback_to_manifest`

- Title: Rollback To Manifest
- Category/risk/exposure: `self-extension` / `high` / `visible`
- Handler: `unreal.mcp_rollback_to_manifest`
- Description: Restores source and registry files from a selected extension backup manifest.
- Required fields: none
- Top-level properties: `manifestPath`:string, `toolName`:string, `selector`:string, `manifestIndex`:number, `dryRun`:boolean, `force`:boolean, `createPreRollbackBackup`:boolean
- Docs: `README.md#tool-coverage`

### `unreal.mcp_run_test_suite`

- Title: Run MCP Test Suite
- Category/risk/exposure: `self-extension` / `medium` / `visible`
- Handler: `unreal.mcp_run_test_suite`
- Description: Runs a directory of MCP JSON test requests and reports pass/fail results with optional project memory handoff.
- Required fields: none
- Top-level properties: `toolName`:string, `testsDir`:string, `scaffoldDir`:string, `outputRoot`:string, `memoryKey`:string, `readProjectMemory`:boolean, `writeProjectMemory`:boolean, `executeTool`:boolean, `stopOnFailure`:boolean, `fallbackToSingleTest`:boolean, `includePassedStructuredContent`:boolean
- Docs: `README.md#tool-coverage`

### `unreal.mcp_run_tool_test`

- Title: Run MCP Tool Test
- Category/risk/exposure: `self-extension` / `medium` / `visible`
- Handler: `unreal.mcp_run_tool_test`
- Description: Runs one MCP tool test request file against the live editor endpoint and records structured pass/fail evidence.
- Required fields: none
- Top-level properties: `toolName`:string, `testRequestPath`:string, `testsDir`:string, `scaffoldDir`:string, `outputRoot`:string, `memoryKey`:string, `readProjectMemory`:boolean, `writeProjectMemory`:boolean, `expectToolListed`:boolean, `executeTool`:boolean, `runSuite`:boolean
- Docs: `README.md#tool-coverage`

### `unreal.mcp_supervisor_install`

- Title: Install MCP Supervisor
- Category/risk/exposure: `self-extension` / `high` / `visible`
- Handler: `unreal.mcp_supervisor_install`
- Description: Installs project-local supervisor launch templates and scripts used for restart-aware self-extension automation.
- Required fields: none
- Top-level properties: `platform`:string, `outputDir`:string, `label`:string, `memoryKey`:string, `argsJson`:string, `endpointUrl`:string, `supervisorLogDir`:string, `editorCmd`:string, `installLaunchAgent`:boolean, `launchAtLoad`:boolean, `autoRestart`:boolean, `overwrite`:boolean, `dryRun`:boolean
- Docs: `README.md#tool-coverage`

### `unreal.mcp_tool_audit`

- Title: Audit MCP Tools
- Category/risk/exposure: `self-extension` / `read_only` / `visible`
- Handler: `unreal.mcp_tool_audit`
- Description: Read-only audit of registered MCP tools, handlers, README documentation, and AI schema compatibility.
- Required fields: none
- Top-level properties: none
- Docs: `README.md#tool-coverage`

### `unreal.mcp_user_registry_reload`

- Title: Reload User Tool Registry
- Category/risk/exposure: `self-extension` / `low` / `visible`
- Handler: `unreal.mcp_user_registry_reload`
- Description: Rescan project-local user Python tools at <projDir>/Tools/UnrealMcpPyTools/ and refresh the overlay registry. Hot-reloads main.py via Python module reimport (sys.modules.pop + reimport; no editor restart needed). Reports added/updated/removed/rejected tools with structured lifecycle.
- Required fields: none
- Top-level properties: `acceptChangedHashes`:boolean, `dryRun`:boolean
- Docs: `Tools/UnrealMcpSkills/mcp-self-extension/SKILL.md`

### `unreal.mcp_user_tool_smoke`

- Title: Smoke-test User Tool
- Category/risk/exposure: `self-extension` / `low` / `visible`
- Handler: `unreal.mcp_user_tool_smoke`
- Description: Invoke a loaded user Python tool with minimal/dryRun args under a bounded timeout. Reports smoke_passed | smoke_failed structured lifecycle. Assistant may only claim a user tool is callable after smoke_passed confirms successful invocation.
- Required fields: `toolName`
- Top-level properties: `toolName*`:string, `dryRunArgs`:string, `timeoutSeconds`:number
- Docs: `Tools/UnrealMcpSkills/mcp-self-extension/SKILL.md`

### `unreal.mcp_validate_cpp_patch`

- Title: Validate C++ Patch
- Category/risk/exposure: `self-extension` / `read_only` / `visible`
- Handler: `unreal.mcp_validate_cpp_patch`
- Description: Validates scaffold C++ patch fragments for required anchors, unsafe operations, and self-extension integration risks.
- Required fields: none
- Top-level properties: `patchText`:string, `patchName`:string, `snippetText`:string, `snippetName`:string, `toolName`:string, `scaffoldDir`:string, `outputRoot`:string
- Docs: `README.md#tool-coverage`

### `unreal.mcp_validate_cpp_snippet`

- Title: Validate C++ Snippet
- Category/risk/exposure: `self-extension` / `read_only` / `legacy_hidden`
- Handler: `unreal.mcp_validate_cpp_snippet`
- Description: Legacy alias for validating scaffold C++ patch fragments; prefer unreal.mcp_validate_cpp_patch for new workflows.
- Required fields: none
- Top-level properties: none
- Docs: `README.md#tool-coverage`

### `unreal.mcp_validate_tool_schema`

- Title: Validate Tool Schema
- Category/risk/exposure: `self-extension` / `read_only` / `visible`
- Handler: `unreal.mcp_validate_tool_schema`
- Description: Validates an MCP tool schema for fixed OpenAI-compatible JSON object shape and required metadata.
- Required fields: none
- Top-level properties: `toolName`:string, `schemaJson`:string, `returnNormalizedSchema`:boolean
- Docs: `README.md#tool-coverage`

### `unreal.mcp_workbench_status`

- Title: MCP Workbench Status
- Category/risk/exposure: `self-extension` / `read_only` / `visible`
- Handler: `unreal.mcp_workbench_status`
- Description: Read-only dashboard summary for self-extension health: tools, audit, memory, manifests, build/test artifacts, and supervisor status.
- Required fields: none
- Top-level properties: `memoryKey`:string, `includeBuildLogTail`:boolean, `buildLogTailLines`:number
- Docs: `README.md#tool-coverage`

### `unreal.preview_change_plan`

- Title: Preview Change Plan
- Category/risk/exposure: `self-extension` / `read_only` / `visible`
- Handler: `unreal.preview_change_plan`
- Description: Converts a natural-language task into a structured plan with likely tools, risks, backups, and verification steps.
- Required fields: none
- Top-level properties: `task`:string
- Docs: `README.md#tool-coverage`

### `unreal.tool_gap_analyze`

- Title: Analyze MCP Tool Gap
- Category/risk/exposure: `self-extension` / `read_only` / `visible`
- Handler: `unreal.tool_gap_analyze`
- Description: Detects functional gaps in the current tool surface relative to a workflow goal as a read-only audit.
- Required fields: none
- Top-level properties: `task`:string, `riskMax`:string, `limit`:number
- Docs: `Docs/KnowledgeRag.md`

### `unreal.tool_recommend`

- Title: Recommend MCP Tools
- Category/risk/exposure: `self-extension` / `read_only` / `visible`
- Handler: `unreal.tool_recommend`
- Description: Given a task description, returns ranked tool suggestions from the local registry plus knowledge index.
- Required fields: none
- Top-level properties: `task`:string, `riskMax`:string, `limit`:number, `includeKnowledge`:boolean, `includeWorkflowDraft`:boolean
- Docs: `Docs/KnowledgeRag.md`

### `unreal.tools.export_package`

- Title: Export Tool Package
- Category/risk/exposure: `self-extension` / `medium` / `visible`
- Handler: `unreal.tools.export_package`
- Description: Exports a scaffold-backed MCP tool to a portable zip package under Saved/UnrealMcp/Packages/; expert flag allowRegistryOnly=true emits a non-portable registry-only package that import refuses by default.
- Required fields: `toolName`
- Top-level properties: `toolName*`:string, `version`:string, `packagePath`:string, `scaffoldDir`:string, `outputRoot`:string, `dryRun`:boolean, `allowRegistryOnly`:boolean
- Docs: `Docs/SelfExtensionPipeline.md#tool-sharing`

### `unreal.tools.import_package`

- Title: Import Tool Package
- Category/risk/exposure: `self-extension` / `high` / `visible`
- Handler: `unreal.tools.import_package`
- Description: Validates and imports a portable tool package zip into the local registry/scaffold/test tree; registry-only packages are refused unless caller explicitly opts in.
- Required fields: `packagePath`
- Top-level properties: `packagePath*`:string, `dryRun`:boolean, `overwriteScaffold`:boolean, `acceptRegistryOnly`:boolean, `skipLock`:boolean
- Docs: `Docs/SelfExtensionPipeline.md#tool-sharing`

### `unreal.tools.list_exportable`

- Title: List Exportable Tools
- Category/risk/exposure: `self-extension` / `read_only` / `visible`
- Handler: `unreal.tools.list_exportable`
- Description: Lists registered MCP tools that qualify as scaffold-backed and can be cleanly exported via unreal.tools.export_package.
- Required fields: none
- Top-level properties: none
- Docs: `Docs/SelfExtensionPipeline.md#tool-sharing`

### `unreal.user_registry_introspect`

- Title: Introspect User Registry
- Category/risk/exposure: `self-extension` / `read_only` / `visible`
- Handler: `unreal.user_registry_introspect`
- Description: Inspect user registry state, generated source metadata, handler hashes, lifecycle state, and rejection reasons without exposing private captured args.
- Required fields: none
- Top-level properties: `includeToolJson`:boolean, `includePythonSha`:boolean, `toolName`:string
- Docs: `Docs/SelfExtensionPipeline.md`

### `unreal.verify_task_outcome`

- Title: Verify Task Outcome
- Category/risk/exposure: `self-extension` / `read_only` / `visible`
- Handler: `unreal.verify_task_outcome`
- Description: Checks task completion evidence using tools/list, snapshot diffs, and required text evidence.
- Required fields: none
- Top-level properties: `task`:string, `beforeSnapshotPath`:string, `afterSnapshotPath`:string, `expectedChangedAreas`:array, `expectedTools`:array, `evidenceText`:string, `requiredEvidenceText`:string
- Docs: `README.md#tool-coverage`

### `unreal.workflow_recommend`

- Title: Recommend MCP Workflow
- Category/risk/exposure: `self-extension` / `read_only` / `visible`
- Handler: `unreal.workflow_recommend`
- Description: Given a goal, returns a step-by-step workflow composed of existing MCP tool calls.
- Required fields: none
- Top-level properties: `task`:string, `riskMax`:string, `limit`:number, `includeKnowledge`:boolean, `dryRun`:boolean
- Docs: `Docs/KnowledgeRag.md`

### `unreal.workflow_run`

- Title: Run MCP Workflow
- Category/risk/exposure: `self-extension` / `high` / `visible`
- Handler: `unreal.workflow_run`
- Description: Runs a bounded, policy-checked sequence of MCP tool calls with dry-run planning, risk gates, failure pause, and project-memory handoff.
- Required fields: none
- Top-level properties: `workflowName`:string, `workflowJson`:string, `workflowPath`:string, `steps`:array, `dryRun`:boolean, `stopOnFailure`:boolean, `maxSteps`:number, `writeMemory`:boolean, `memoryKey`:string, `allowHighRisk`:boolean, `allowCritical`:boolean, `includeStepStructuredContent`:boolean, `maxResultChars`:number
- Docs: `README.md#tool-coverage`

## skills

### `unreal.chat_label_active_task`

- Title: Label Active Chat Task
- Category/risk/exposure: `skills` / `low` / `visible`
- Handler: `unreal.chat_label_active_task`
- Description: Sets or clears a user-visible label for subsequent launch-session ActivityLog events.
- Required fields: none
- Top-level properties: `label`:string
- Docs: `README.md#tool-coverage`

### `unreal.skill_activity_status`

- Title: Get Skill Activity Status
- Category/risk/exposure: `skills` / `read_only` / `visible`
- Handler: `unreal.skill_activity_status`
- Description: Reports local skill activity recording status, current session files, and available drafts without mutating state.
- Required fields: none
- Top-level properties: `includeRecentEvents`:boolean, `maxEvents`:number
- Docs: `README.md#tool-coverage`

### `unreal.skill_apply`

- Title: Apply Skill
- Category/risk/exposure: `skills` / `medium` / `visible`
- Handler: `unreal.skill_apply`
- Description: Applies a promoted project skill by reading its instructions and returning the workflow guidance for the caller.
- Required fields: none
- Top-level properties: `skillName`:string, `skillPath`:string, `roots`:array, `task`:string, `memoryKey`:string, `writeMemory`:boolean, `includeFullText`:boolean
- Docs: `README.md#tool-coverage`

### `unreal.skill_distill_from_activity`

- Title: Distill Skill From Activity
- Category/risk/exposure: `skills` / `medium` / `visible`
- Handler: `unreal.skill_distill_from_activity`
- Description: Distills recent ActivityLog events into a local skill draft under Saved/UnrealMcp for review.
- Required fields: none
- Top-level properties: `sessionId`:string, `skillName`:string, `title`:string, `goal`:string, `writeDraft`:boolean, `includeEvents`:boolean, `overwrite`:boolean, `maxEvents`:number
- Docs: `README.md#tool-coverage`

### `unreal.skill_list`

- Title: List Skills
- Category/risk/exposure: `skills` / `read_only` / `visible`
- Handler: `unreal.skill_list`
- Description: Lists promoted project skills and local drafts available to the Unreal MCP skill workflow.
- Required fields: none
- Top-level properties: `roots`:array, `nameFilter`:string, `includeText`:boolean, `maxPreviewChars`:number
- Docs: `README.md#tool-coverage`

### `unreal.skill_promote_draft`

- Title: Promote Skill Draft
- Category/risk/exposure: `skills` / `high` / `visible`
- Handler: `unreal.skill_promote_draft`
- Description: Promotes a reviewed skill draft into Tools/UnrealMcpSkills so it becomes team-shared project guidance.
- Required fields: none
- Top-level properties: `skillName`:string, `draftPath`:string, `overwrite`:boolean, `dryRun`:boolean, `createBackup`:boolean
- Docs: `README.md#tool-coverage`

### `unreal.skill_read`

- Title: Read Skill
- Category/risk/exposure: `skills` / `read_only` / `visible`
- Handler: `unreal.skill_read`
- Description: Reads a promoted project skill or draft by name and returns its instruction text.
- Required fields: none
- Top-level properties: `skillName`:string, `skillPath`:string, `roots`:array, `includeText`:boolean, `maxPreviewChars`:number
- Docs: `README.md#tool-coverage`

### `unreal.skill_recording_start`

- Title: Start Skill Recording
- Category/risk/exposure: `skills` / `medium` / `visible`
- Handler: `unreal.skill_recording_start`
- Description: Starts local activity recording for a skill-distillation session under Saved/UnrealMcp.
- Required fields: none
- Top-level properties: `goal`:string, `sessionId`:string, `recordIntervalSeconds`:number, `reset`:boolean
- Docs: `README.md#tool-coverage`

### `unreal.skill_recording_stop`

- Title: Stop Skill Recording
- Category/risk/exposure: `skills` / `medium` / `visible`
- Handler: `unreal.skill_recording_stop`
- Description: Stops the active skill recording session and leaves recorded events available for distillation.
- Required fields: none
- Top-level properties: `reason`:string
- Docs: `README.md#tool-coverage`

### `unreal.skill_save_draft`

- Title: Save Skill Draft
- Category/risk/exposure: `skills` / `medium` / `visible`
- Handler: `unreal.skill_save_draft`
- Description: Writes edited skill draft content under Saved/UnrealMcp before optional promotion.
- Required fields: none
- Top-level properties: `skillName`:string, `title`:string, `goal`:string, `summary`:string, `draftText`:string, `overwrite`:boolean
- Docs: `README.md#tool-coverage`

## task-atlas

### `unreal.activity_log_annotate`

- Title: Annotate Activity Log
- Category/risk/exposure: `task-atlas` / `low` / `visible`
- Handler: `unreal.activity_log_annotate`
- Description: Writes a user_intent or ai_summary ActivityLog event for Task Atlas extraction and refreshes local task JSON files.
- Required fields: `kind`, `content`
- Top-level properties: `kind*`:string, `content*`:string, `sessionId`:string
- Docs: `Docs/TaskAtlas.md`

### `unreal.task_atlas_delete_made_tool`

- Title: Delete Task Atlas Made Tool
- Category/risk/exposure: `task-atlas` / `high` / `visible`
- Handler: `unreal.task_atlas_delete_made_tool`
- Description: Remove a Task Atlas generated user composite and reload the user registry.
- Required fields: `toolName`, `confirm`
- Top-level properties: `toolName*`:string, `confirm*`:boolean, `dryRun`:boolean
- Docs: `Docs/TaskAtlas.md`

### `unreal.task_atlas_list_made_tools`

- Title: List Task Atlas Made Tools
- Category/risk/exposure: `task-atlas` / `read_only` / `visible`
- Handler: `unreal.task_atlas_list_made_tools`
- Description: List Task Atlas generated user composites for CLI diagnostics and Made Tools views.
- Required fields: none
- Top-level properties: `includeStale`:boolean, `includeFailureMarkers`:boolean, `sourceTaskId`:string
- Docs: `Docs/TaskAtlas.md`

### `unreal.task_atlas_make_composite`

- Title: Make Task Atlas Composite
- Category/risk/exposure: `task-atlas` / `high` / `visible`
- Handler: `unreal.task_atlas_make_composite`
- Description: Turn a Task Atlas task into either a generated preview composite Python user tool or a document-only draft, depending on eligibility.
- Required fields: `taskId`
- Top-level properties: `taskId*`:string, `preferDocumentOnly`:boolean, `forceWriteEvenIfBlocked`:boolean, `overrideStepArgs`:array
- Docs: `Docs/TaskAtlas.md`

### `unreal.task_atlas_promote_to_rag`

- Title: Promote Task Atlas Task To RAG
- Category/risk/exposure: `task-atlas` / `medium` / `visible`
- Handler: `unreal.task_atlas_promote_to_rag`
- Description: Promote a Task Atlas task or draft into a RAG knowledge source and refresh the knowledge index.
- Required fields: `taskId`
- Top-level properties: `taskId*`:string, `dryRun`:boolean, `refreshIndex`:boolean
- Docs: `Docs/TaskAtlas.md`

### `unreal.task_atlas_smoke_made_tool`

- Title: Smoke Task Atlas Made Tool
- Category/risk/exposure: `task-atlas` / `high` / `visible`
- Handler: `unreal.task_atlas_smoke_made_tool`
- Description: Run or preview a smoke test for a generated composite user tool and record failure diagnostics without deleting the tool.
- Required fields: `toolName`
- Top-level properties: `toolName*`:string, `dryRun`:boolean, `acceptChangedHashes`:boolean
- Docs: `Docs/TaskAtlas.md`

### `unreal.task_describe`

- Title: Describe Task Atlas Task
- Category/risk/exposure: `task-atlas` / `read_only` / `visible`
- Handler: `unreal.task_describe`
- Description: Returns the full persisted Task Atlas JSON document plus task path/status fields for one taskId.
- Required fields: `taskId`
- Top-level properties: `taskId*`:string
- Docs: `Docs/TaskAtlas.md`

### `unreal.task_label_backfill`

- Title: Backfill Task Atlas Labels
- Category/risk/exposure: `task-atlas` / `medium` / `visible`
- Handler: `unreal.task_label_backfill`
- Description: Uses the configured Anthropic Messages provider to infer short labels for unpinned Task Atlas tasks that still have Session timestamp placeholders.
- Required fields: none
- Top-level properties: `sessionId`:string, `limit`:number, `force`:boolean, `dryRun`:boolean
- Docs: `Docs/TaskAtlas.md`

### `unreal.task_list`

- Title: List Task Atlas Tasks
- Category/risk/exposure: `task-atlas` / `read_only` / `visible`
- Handler: `unreal.task_list`
- Description: Refreshes Task Atlas JSON files from ActivityLog and lists extracted tasks with rating, pin state, and critical path.
- Required fields: none
- Top-level properties: `filter`:string, `limit`:number
- Docs: `Docs/TaskAtlas.md`

### `unreal.task_pin`

- Title: Pin Task Atlas Task
- Category/risk/exposure: `task-atlas` / `low` / `visible`
- Handler: `unreal.task_pin`
- Description: Persists a pinned state for an existing Task Atlas task and appends a task_pin_change ActivityLog event with a critical path snapshot.
- Required fields: `taskId`, `pinned`
- Top-level properties: `taskId*`:string, `pinned*`:boolean
- Docs: `Docs/TaskAtlas.md`

### `unreal.task_rate`

- Title: Rate Task Atlas Task
- Category/risk/exposure: `task-atlas` / `low` / `visible`
- Handler: `unreal.task_rate`
- Description: Persists a success, failed, or unrated rating for an existing Task Atlas task and appends a task_rating ActivityLog event.
- Required fields: `taskId`, `rating`
- Top-level properties: `taskId*`:string, `rating*`:string
- Docs: `Docs/TaskAtlas.md`

## verification

### `unreal.automation_list`

- Title: List Automation Tests
- Category/risk/exposure: `verification` / `read_only` / `visible`
- Handler: `unreal.automation_list`
- Description: Lists runnable Unreal Automation Framework tests with canonical fullName, display name, flags, and optional details.
- Required fields: none
- Top-level properties: `filter`:string, `includeDetails`:boolean, `limit`:number
- Docs: `Docs/Verification.md`

### `unreal.automation_report`

- Title: Get Automation Run Report
- Category/risk/exposure: `verification` / `read_only` / `visible`
- Handler: `unreal.automation_report`
- Description: Returns the current or persisted report for an async automation test run.
- Required fields: `runId`
- Top-level properties: `runId*`:string
- Docs: `Docs/Verification.md`

### `unreal.automation_run`

- Title: Run Automation Test
- Category/risk/exposure: `verification` / `medium` / `visible`
- Handler: `unreal.automation_run`
- Description: Queues one Unreal Automation Framework test and returns immediately with a runId for polling.
- Required fields: `fullName`
- Top-level properties: `fullName*`:string, `timeoutSeconds`:number, `tags`:array
- Docs: `Docs/Verification.md`

### `unreal.editor_diagnostics`

- Title: Read Editor Diagnostics
- Category/risk/exposure: `verification` / `read_only` / `visible`
- Handler: `unreal.editor_diagnostics`
- Description: Returns recent warning, error, and fatal Output Log diagnostics from an in-memory listener-backed ring buffer.
- Required fields: none
- Top-level properties: `since`:string, `classes`:array, `limit`:number
- Docs: `Docs/Verification.md`

### `unreal.pie_input_probe`

- Title: Probe PIE Input Movement
- Category/risk/exposure: `verification` / `medium` / `visible`
- Handler: `unreal.pie_input_probe`
- Description: Starts or polls an asynchronous PIE input probe that injects one gameplay input profile on the core ticker and reports movement or rotation deltas.
- Required fields: `action`
- Top-level properties: `action*`:string, `inputProfile`:string, `durationSeconds`:number, `probeId`:string
- Docs: `Docs/Verification.md`

### `unreal.pie_smoke`

- Title: Run PIE Smoke
- Category/risk/exposure: `verification` / `high` / `visible`
- Handler: `unreal.pie_smoke`
- Description: Queues a Play In Editor smoke verification run, observes BeginPIE/alive-window/EndPIE, and returns a runId for automation_report polling.
- Required fields: none
- Top-level properties: `mapPath`:string, `timeoutSeconds`:number, `aliveWindowSeconds`:number
- Docs: `Docs/Verification.md`

### `unreal.verify_player_controls`

- Title: Verify Player Controls
- Category/risk/exposure: `verification` / `medium` / `visible`
- Handler: `unreal.verify_player_controls`
- Description: Verifies PIE possession, pawn class, camera/spring arm components, and Jump/move/look binding existence without injecting input or checking movement deltas.
- Required fields: none
- Top-level properties: `expectedPawnClass`:string, `startIfNeeded`:boolean, `stopAfter`:boolean
- Docs: `Tools/UnrealMcpToolDocs/verification/verify_player_controls.md`

### `unreal.verify_viewport_widgets`

- Title: Verify Viewport Widgets
- Category/risk/exposure: `verification` / `read_only` / `visible`
- Handler: `unreal.verify_viewport_widgets`
- Description: Lists UUserWidget instances that are currently in the PIE viewport, optionally filtered by generated widget class path.
- Required fields: none
- Top-level properties: `widgetClassFilter`:string
- Docs: `Docs/Verification.md`

## widget

### `unreal.widget_add`

- Title: Add Widget
- Category/risk/exposure: `widget` / `medium` / `visible`
- Handler: `unreal.widget_add`
- Description: Adds a widget to a Widget Blueprint tree under the requested parent and marks the asset dirty.
- Required fields: none
- Top-level properties: `widgetBlueprintPath`:string, `parentWidgetName`:string, `widgetName`:string, `widgetClass`:string, `index`:number, `isVariable`:boolean
- Docs: `README.md#tool-coverage`

### `unreal.widget_bind_blueprint_variable`

- Title: Bind Widget Variable
- Category/risk/exposure: `widget` / `medium` / `visible`
- Handler: `unreal.widget_bind_blueprint_variable`
- Description: Binds a Widget Blueprint variable to a named widget so graph and designer code can reference it.
- Required fields: none
- Top-level properties: `widgetBlueprintPath`:string, `widgetName`:string, `variableName`:string, `expose`:boolean, `compile`:boolean
- Docs: `README.md#tool-coverage`

### `unreal.widget_bind_event`

- Title: Bind Widget Event
- Category/risk/exposure: `widget` / `medium` / `visible`
- Handler: `unreal.widget_bind_event`
- Description: Binds a widget event to a generated Blueprint graph handler and reports the created binding evidence.
- Required fields: none
- Top-level properties: `widgetBlueprintPath`:string, `widgetName`:string, `eventName`:string, `functionName`:string, `x`:number, `y`:number, `compile`:boolean
- Docs: `README.md#tool-coverage`

### `unreal.widget_build_template`

- Title: Build Widget Template
- Category/risk/exposure: `widget` / `medium` / `visible`
- Handler: `unreal.widget_build_template`
- Description: Builds a predefined Widget Blueprint layout template for common HUD or panel workflows.
- Required fields: none
- Top-level properties: `widgetBlueprintPath`:string, `templateName`:string, `title`:string, `replaceRoot`:boolean, `compile`:boolean, `savePackage`:boolean
- Docs: `README.md#tool-coverage`

### `unreal.widget_delete`

- Title: Delete Widget
- Category/risk/exposure: `widget` / `high` / `visible`
- Handler: `unreal.widget_delete`
- Description: Deletes a widget subtree from a Widget Blueprint after checking bindings, bound events, and animation references. Use force only when the user explicitly wants to remove referenced UMG widgets.
- Required fields: `widgetBlueprintPath`, `widgetName`
- Top-level properties: `widgetBlueprintPath*`:string, `widgetName*`:string, `force`:boolean
- Docs: `Plugins/UnrealMcp/README.md#editor-action-tools`

### `unreal.widget_dump_tree`

- Title: Dump Widget Tree
- Category/risk/exposure: `widget` / `read_only` / `visible`
- Handler: `unreal.widget_dump_tree`
- Description: Read-only inspection of a Widget Blueprint tree, widget variables, slots, and optional EventGraph nodes.
- Required fields: none
- Top-level properties: `widgetBlueprintPath`:string, `includeDesignerTree`:boolean, `includeGraphNodes`:boolean
- Docs: `README.md#tool-coverage`

### `unreal.widget_duplicate`

- Title: Duplicate Widget
- Category/risk/exposure: `widget` / `medium` / `visible`
- Handler: `unreal.widget_duplicate`
- Description: Duplicates a widget node inside the same Widget Blueprint, optionally copying its child subtree and assigning unique names. Use this when duplicating a UMG button, text block, card, panel, or layout group.
- Required fields: `widgetBlueprintPath`, `sourceName`
- Top-level properties: `widgetBlueprintPath*`:string, `sourceName*`:string, `newName`:string, `includeSubtree`:boolean
- Docs: `Plugins/UnrealMcp/README.md#editor-action-tools`

### `unreal.widget_remove`

- Title: Remove Widget
- Category/risk/exposure: `widget` / `medium` / `visible`
- Handler: `unreal.widget_remove`
- Description: Removes a named widget from a Widget Blueprint tree and marks the asset dirty.
- Required fields: none
- Top-level properties: `widgetBlueprintPath`:string, `widgetName`:string
- Docs: `README.md#tool-coverage`

### `unreal.widget_rename`

- Title: Rename Widget
- Category/risk/exposure: `widget` / `medium` / `visible`
- Handler: `unreal.widget_rename`
- Description: Renames a widget node inside a Widget Blueprint, preserving bindings, variable references, animation bindings, and designer hierarchy references. Use this to rename a button, text block, panel, or other UMG widget by name.
- Required fields: `widgetBlueprintPath`, `oldName`, `newName`
- Top-level properties: `widgetBlueprintPath*`:string, `oldName*`:string, `newName*`:string, `force`:boolean
- Docs: `Plugins/UnrealMcp/README.md#editor-action-tools`

### `unreal.widget_reorder_child`

- Title: Reorder Widget
- Category/risk/exposure: `widget` / `low` / `visible`
- Handler: `unreal.widget_reorder_child`
- Description: Moves a widget to a new sibling index inside its parent panel in a Widget Blueprint. Use this when a user asks to move a button, text block, image, or panel earlier or later in a UMG layout.
- Required fields: `widgetBlueprintPath`, `widgetName`, `newIndex`
- Top-level properties: `widgetBlueprintPath*`:string, `widgetName*`:string, `newIndex*`:number
- Docs: `Plugins/UnrealMcp/README.md#editor-action-tools`

### `unreal.widget_set_property`

- Title: Set Widget Property
- Category/risk/exposure: `widget` / `medium` / `visible`
- Handler: `unreal.widget_set_property`
- Description: Sets a supported property on a named widget inside a Widget Blueprint.
- Required fields: none
- Top-level properties: `widgetBlueprintPath`:string, `widgetName`:string, `propertyName`:string, `value`:string
- Docs: `README.md#tool-coverage`

### `unreal.widget_set_slot_layout`

- Title: Set Widget Slot Layout
- Category/risk/exposure: `widget` / `medium` / `visible`
- Handler: `unreal.widget_set_slot_layout`
- Description: Updates slot layout fields such as anchors, offsets, alignment, or size for a widget with a parent slot.
- Required fields: none
- Top-level properties: `widgetBlueprintPath`:string, `widgetName`:string, `x`:number, `y`:number, `width`:number, `height`:number, `autoSize`:boolean, `zOrder`:number, `alignmentX`:number, `alignmentY`:number, `anchorMinX`:number, `anchorMinY`:number, `anchorMaxX`:number, `anchorMaxY`:number, `paddingLeft`:number, `paddingTop`:number, `paddingRight`:number, `paddingBottom`:number, `hAlign`:string, `vAlign`:string, `sizeRule`:string, `sizeValue`:number
- Docs: `README.md#tool-coverage`
