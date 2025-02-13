extends Node2D

signal trans_up
signal trans_down
signal trans_left
signal trans_right

# copy to main scene node to connect transition signals
#var transition = get_node("transition")
#	transition.trans_up.connect
#	transition.trans_down.connect
#	transition.tranls_left.connect
#	transition.trans_right.connect

func _on_transition_down_entered():
	trans_down.emit


func _on_transition_up_entered():
	trans_up.emit

func _on_transition_left_entered():
	trans_left.emit


func _on_transition_right_entered():
	trans_right.emit
