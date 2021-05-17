extends KinematicBody2D

const speed = 200

func _process(delta):
    var velocity = Vector2.ZERO

    Input.is_action_pressed("ui_left"):
        velocity.x -= 1