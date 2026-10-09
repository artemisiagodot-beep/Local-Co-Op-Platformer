extends Node3D
var crate := self

func _on_lever_lever_pulled() -> void:
	crate.queue_free()
