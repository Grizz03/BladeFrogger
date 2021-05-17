extends KinematicBody2D

const speed = 200

func _process(delta):
	var velocity = Vector2.ZERO
# Inputs for player movements
	if Input.is_action_just_pressed("ui_left"):
		velocity.x -= 1
	if Input.is_action_pressed("ui_up"):
		velocity.y -= 1
	if Input.is_action_pressed("ui_right"):
		velocity.x += 1
	if Input.is_action_pressed("ui_down"):
		velocity.y += 1
	move_and_slide(velocity.normalized() * speed) # Normalized so x and y dont double speed
