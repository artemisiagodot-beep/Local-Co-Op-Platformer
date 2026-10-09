extends Camera3D


@export var player_1: CharacterBody3D
@export var drif_factor: float = 1.0

func _process(delta: float) -> void:
	global_position.x = snappedf(player_1.global_position.x, 20.0) + posmod(player_1.global_position.x, 1.0) / drif_factor
