extends RigidBody2D


# Called when the node enters the scene tree for the first time.
func _ready():
	var Talk = get_node("TalkArea")
	Talk.interaction.connect(_on_interact)

func _on_interact():
	Dialogic.start ("pole")
