extends GridMap
@onready var animation_player: AnimationPlayer = $AnimationPlayer
@onready var directional_light_3d: DirectionalLight3D = $"../../DirectionalLight3D"


func first_steps_appear() -> void:
	animation_player.play("Test_Animation")
	await animation_player.animation_finished
	set_cell_item(Vector3i(23,0,-8), -1)

func set_floor_pattern(offset: int) -> void:
	for x in range(21, 27):
		set_cell_item(Vector3i(x, 0, -10), (x + offset) % 2)
		
func second_floor_zero() -> void:
	set_floor_pattern(0)
func second_floor_one() -> void:
	set_floor_pattern(1)

func second_steps_appear() ->void:
	directional_light_3d.light_energy = 0.0
	for x in range(7, 27):
		set_cell_item(Vector3i(x, 0, -14), 2)
	animation_player.play("Second_Floor")
	await animation_player.animation_finished
	directional_light_3d.light_energy = 1.0
	for x in range(7, 27):
		set_cell_item(Vector3i(x, 0, -14), 0)
	for x in range(21, 27):
		set_cell_item(Vector3i(x,0,-10), -1)
	
func third_steps_appear() -> void:
	for x in range(28, 34):
		set_cell_item(Vector3i(x,0,-2), 0)
	await get_tree().create_timer(5.0).timeout
	for x in range(28, 34):
		set_cell_item(Vector3i(x,0,-2), -1)
