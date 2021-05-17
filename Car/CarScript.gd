extends Area2D

var car_speed
var direction = 1
var CAR_LIST = ['Grey1', 'Grey2', 'Yellow1', 'Yellow2']

func _ready():
	# randomizes everytime its ran(wont start with same number)
	randomize()
	# picks random item in CAR_LIST
	var current_car = CAR_LIST[randi() % CAR_LIST.size()]
	# then plays it
	$'AnimatedSprite'.play(current_car)
	car_speed = rand_range(220,280)
	
	# right
	if position.x < 0:
		direction = -1
		$'AnimatedSprite'.flip_h = true
	# left
	else:
		direction = 1

# Always apply delta when moving POSITIONS of objects
func _process(delta):
	position.x -= car_speed * delta * direction

# Changes to GameOver scene after collision -> add delay??
func _on_Car_body_entered(body):
	get_tree().change_scene("res://GameOver/GameScreen.tscn")
