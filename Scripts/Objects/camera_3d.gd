extends Camera3D

@export var player_1: CharacterBody3D


func _process(delta: float) -> void:
	global_position.x = snappedf(player_1.global_position.x, 20.0)
