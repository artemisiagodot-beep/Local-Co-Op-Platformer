extends Camera3D

@export var camera_positions: Array[Vector3] = []

func _on_frame_1_body_entered(body: Node3D) -> void:
	if body.is_in_group("player1"):
		position = camera_positions[0]


func _on_frame_2_body_entered(body: Node3D) -> void:
	if body.is_in_group("player1"):
		position = camera_positions[1]


func _on_frame_3_body_entered(body: Node3D) -> void:
	if body.is_in_group("player1"):
		position = camera_positions[2]


func _on_frame_4_body_entered(body: Node3D) -> void:
	if body.is_in_group("player1"):
		position = camera_positions[4]


func _on_frame_5_body_entered(body: Node3D) -> void:
	if body.is_in_group("player1"):
		position = camera_positions[5]


func _on_frame_6_body_entered(body: Node3D) -> void:
	if body.is_in_group("player1"):
		position = camera_positions[6]


func _on_frame_7_body_entered(body: Node3D) -> void:
	if body.is_in_group("player1"):
		position = camera_positions[7]


func _on_frame_8_body_entered(body: Node3D) -> void:
	if body.is_in_group("player1"):
		position = camera_positions[8]


func _on_frame_9_body_entered(body: Node3D) -> void:
	if body.is_in_group("player1"):
		position = camera_positions[9]
