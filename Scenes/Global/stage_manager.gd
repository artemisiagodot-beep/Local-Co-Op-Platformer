extends CanvasLayer

const LVL0 = preload("res://Scenes/Levels/level_0.scn")
const LVL1 = preload("res://Scenes/Levels/level_1.scn")
@onready var anim_player: AnimationPlayer = $AnimationPlayer


func change_stage(stage: PackedScene):
	get_tree().paused = true
	anim_player.play("transition_in")
	await anim_player.animation_finished
	if stage:
		get_tree().change_scene_to_packed(stage)
	await get_tree().process_frame
	anim_player.play("transition_out")
	await anim_player.animation_finished
	get_tree().paused = false
