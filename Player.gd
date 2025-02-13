extends CharacterBody2D
class_name  Player

const SPEED = 200.0

func _physics_process(delta):
	
	# Get the input direction and handle the movement/deceleration.
	
	var direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	$body.play()
	$head.play()
	if direction and !Dialogic.current_timeline:
		velocity = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		velocity.y = move_toward(velocity.y, 0, SPEED)
	# get animation for body and head, depending on direction
	if velocity.y < 0 and velocity.x == 0:
			$body.animation = "up"
			$head.animation = "up"
	elif velocity.y > 0 and velocity.x == 0:
			$body.animation = "down"
			$head.animation = "down"
	elif velocity.y == 0 and velocity.x != 0:
			$body.animation = "orizontal"
			$body.flip_h = velocity.x > 0
			$head.animation = "orizontal"
			$head.flip_h = velocity.x > 0
	elif velocity.y < 0 and velocity.x != 0:
			$body.animation = "up_left"
			$body.flip_h = velocity.x > 0
			$head.animation = "up_left"
			$head.flip_h = velocity.x > 0
	elif velocity.y > 0 and velocity.x != 0:
			$body.animation = "down_left"
			$body.flip_h = velocity.x > 0
			$head.animation = "down_left"
			$head.flip_h = velocity.x > 0
	else: 
			$body.animation = "idle"
			$head.animation = "idle"

	move_and_slide()
