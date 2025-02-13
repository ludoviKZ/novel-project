extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	#Dialogic.start ("Intro")
	var transition = get_node("transition")
	
	transition.trans_up.connect(GoHouse)
	transition.trans_down.connect
	transition.trans_left.connect
	transition.trans_right.connect
	pass 

func GoHouse():
	get_tree().change_scene_to_file("res://house.tscn")
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
