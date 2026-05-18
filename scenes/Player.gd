extends KinematicBody2D
class_name Player

export var speed = 200
var velocity = Vector2.ZERO
var checkpoints_activated = 0

func _ready():
	print("Player started!")

func _physics_process(delta):
	# Input
	var input_vector = Vector2.ZERO
	
	if Input.is_action_pressed("ui_right"):
		input_vector.x += 1
	if Input.is_action_pressed("ui_left"):
		input_vector.x -= 1
	if Input.is_action_pressed("ui_down"):
		input_vector.y += 1
	if Input.is_action_pressed("ui_up"):
		input_vector.y -= 1
	
	input_vector = input_vector.normalized()
	velocity = input_vector * speed
	
	# Move the player
	velocity = move_and_slide(velocity)

func checkpoint_activated():
	checkpoints_activated += 1
	print("Checkpoint activated! Total: ", checkpoints_activated)
	return checkpoints_activated

func get_checkpoints_activated():
	return checkpoints_activated
