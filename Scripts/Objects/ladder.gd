extends Area3D


func _on_body_entered(body: Node3D) -> void:
	if body.is_in_group("player1"):
		StageManager.change_stage(StageManager.LVL1)
