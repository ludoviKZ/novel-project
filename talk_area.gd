extends Area2D
class_name  TalkAreaInteract
@export var action_name: String = "interact"

signal interaction
signal entered

var can_interact = false

func _on_body_entered(body: Node2D) -> void:
	can_interact = true
	entered.emit()

func _on_body_exited(body: Node2D) -> void:
	can_interact = false


func _input(event):
	if event.is_action_pressed("interact") && can_interact == true:
		interaction.emit()
	else:
		pass
 
