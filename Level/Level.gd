extends Node

const CAR = preload("res://Car/Car.tscn")

func _ready():
	# creating instance of player in current scene at START of game
	pass
	
func car_spawn(start_pos):
	# creates instance of CAR
	var car = CAR.instance()
	# selecting random start position with CarStart then 1-5 for positions
	var car_start_node_name = 'StartPositions/CarStart' + str(start_pos)
	# set position
	car.position = get_node(car_start_node_name).position
	$'YSort'.add_child(car)
	# adds child to level scene

	# alter timers wait time
	var timer_node_name = 'CarTimers/Timer' + str(start_pos)
	get_node(timer_node_name).wait_time = rand_range(1.5, 2.2)
	
# timer 1
func _on_Timer1_timeout(): car_spawn(1)
# timer 2
func _on_Timer2_timeout(): car_spawn(2)
# timer 3
func _on_Timer3_timeout(): car_spawn(3)
# timer 4
func _on_Timer4_timeout(): car_spawn(4)
# timer 5
func _on_Timer5_timeout(): car_spawn(5)

func _on_Timer6_timeout(): car_spawn(6)

func _on_Timer7_timeout(): car_spawn(6)

func _on_Timer8_timeout(): car_spawn(6)
