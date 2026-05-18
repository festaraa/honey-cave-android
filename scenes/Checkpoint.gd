extends Area2D
class_name Checkpoint

export var checkpoint_id = 1
var is_activated = false
var player = null

func _ready():
	var area = $Area2D
	area.connect("body_entered", self, "_on_body_entered")
	print("Checkpoint ", checkpoint_id, " ready!")

func _on_body_entered(body):
	if body.name == "Player" and not is_activated:
		is_activated = true
		modulate = Color.yellow
		player = body
		player.checkpoint_activated()
		print("Checkpoint ", checkpoint_id, " activated!")

func is_active():
	return is_activated
