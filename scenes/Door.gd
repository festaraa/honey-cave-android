extends Node2D
class_name Door

export var required_checkpoints = 2
var is_open = false
var player = null

func _ready():
	var area = $Area2D
	area.connect("body_entered", self, "_on_body_entered")
	print("Door requires ", required_checkpoints, " checkpoints to open")

func _on_body_entered(body):
	if body.name == "Player":
		player = body
		var activated = player.get_checkpoints_activated()
		
		if activated >= required_checkpoints and not is_open:
			open_door()
		elif not is_open:
			print("Need ", required_checkpoints - activated, " more checkpoints!")

func open_door():
	is_open = true
	modulate = Color.green
	print("Door is now OPEN!")
	# Можеш да добавиш анимация здесь по-късно
