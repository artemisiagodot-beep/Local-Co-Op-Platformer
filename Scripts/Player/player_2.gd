extends CharacterBody3D


const SPEED = 7.5
const JUMP_VELOCITY = 20
@onready var anim_tree: AnimationTree = $Rogue/AnimationTree
@onready var anim_state: AnimationNodeStateMachinePlayback = anim_tree.get("parameters/playback")

var state: String = "Idle"


func _ready() -> void:
	anim_state.travel(state)

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity.y += -90 * delta


	var input_dir := Input.get_action_strength("player_2_right") - Input.get_action_strength("player_2_left")
	velocity.x = input_dir * SPEED
	velocity.z = 0
	position.z = 1.5
	move_and_slide()
	
	if input_dir != 0:
		rotation.y = PI/2 if input_dir > 0 else -PI/2



	# StateMachine Logic
	var new_state = state
	if Input.is_action_just_pressed("player_2_jump") and is_on_floor():
		new_state = "Jump"
		velocity.y = JUMP_VELOCITY
	elif not is_on_floor():
		new_state = "Jump"
	elif is_on_floor():
		if state == "Jump":
			new_state = "Land"
		if abs(input_dir) > 0.1:
			new_state = "Walk"
		else:
			new_state = "Idle"
	
	if new_state != state:
		state = new_state
		anim_state.travel(state)
