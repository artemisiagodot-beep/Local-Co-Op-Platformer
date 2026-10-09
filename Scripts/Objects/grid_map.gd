extends GridMap

func first_steps_appear() -> void:
	set_cell_item(Vector3i(23,0,-8),0)
	await get_tree().create_timer(3.0).timeout
	set_cell_item(Vector3i(23,0,-8),-1)

func second_steps_appear() ->void:
	set_cell_item(Vector3i(21,0,-10),0)
	set_cell_item(Vector3i(22,0,-10),0)
	set_cell_item(Vector3i(23,0,-10),0)
	set_cell_item(Vector3i(24,0,-10),0)
	set_cell_item(Vector3i(25,0,-10),0)
	set_cell_item(Vector3i(26,0,-10),0)
	await get_tree().create_timer(7.0).timeout
	set_cell_item(Vector3i(21,0,-10),-1)
	set_cell_item(Vector3i(22,0,-10),-1)
	set_cell_item(Vector3i(23,0,-10),-1)
	set_cell_item(Vector3i(24,0,-10),-1)
	set_cell_item(Vector3i(25,0,-10),-1)
	set_cell_item(Vector3i(26,0,-10),-1)
