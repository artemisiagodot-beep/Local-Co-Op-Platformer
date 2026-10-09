extends Node3D
@onready var crate_item: MeshInstance3D = $"crate-item"
@onready var static_body_3d: StaticBody3D = $StaticBody3D
var is_invisible: bool = true

func switch_state() -> void:
	if is_invisible:
		make_it_visible_and_appear()
	else:
		hide_and_collision_turn_off()
		
func hide_and_collision_turn_off() -> void:
	static_body_3d.set_collision_layer_value(1, false)
	crate_item.visible = false
	is_invisible = true
	
func make_it_visible_and_appear() -> void:
	static_body_3d.set_collision_layer_value(1, true)
	crate_item.visible = true
	is_invisible = false
