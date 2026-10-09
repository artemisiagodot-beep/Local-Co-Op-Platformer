extends Node3D
@onready var animation_player: AnimationPlayer = $Scale/AnimationPlayer
var player_1_is_in_range: bool = false
var player_2_is_in_range: bool = false
var toggled: bool = false
signal lever_pulled


func _on_area_3d_body_entered(body: Node3D) -> void:
	if body.is_in_group("player1"):
		player_1_is_in_range = true
	if body.is_in_group("player2"):
		player_2_is_in_range = true

func _on_area_3d_body_exited(body: Node3D) -> void:
	if body.is_in_group("player1"):
		player_1_is_in_range = false
	if body.is_in_group("player2"):
		player_2_is_in_range = false

func _input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("player_1_interact") and player_1_is_in_range:
		if toggled:
			animation_player.play("toggle-off")
			toggled = false
		else:
			animation_player.play("toggle-on")
			toggled = true
			emit_signal('lever_pulled')
			print("signal emitted")
