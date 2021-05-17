extends Area2D

var car_speed = 250

# Always apply delta when moving POSITIONS of objects
func _process(delta):
	position.x -= car_speed * delta

# Changes to GameOver scene after collision -> add delay??
func _on_Car_body_entered(body):
	get_tree().change_scene("res://GameOver/GameScreen.tscn")
