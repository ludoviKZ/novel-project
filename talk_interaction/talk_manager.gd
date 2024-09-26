extends Node2D

signal TalkInteract 

func _input(event):
	if event.is_action_pressed("interact"):
		TalkInteract.emit()
	else:
		pass
