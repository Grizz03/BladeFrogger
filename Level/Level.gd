extends Node

const CAR = preload("res://Car/Car.tscn")

	
func car_spawn(start_pos):
	# creates instance of CAR
	var car = CAR.instance()
	# selecting random start position with CarStart then 1-5 for positions
	var car_start_node_name = 'StartPosition/CarStart' + str(start_pos)
	# set position
	car.position = get_node(car_start_node_name).position
	# adds child to level scene
	add_child(car)

# timer 1
func _on_Timer1_timeout():
	car_spawn(1)

# timer 2
func _on_Timer2_timeout():
	car_spawn(2)

# timer 3
func _on_Timer3_timeout():
	car_spawn(3)

# timer 4
func _on_Timer4_timeout():
	car_spawn(4)

# timer 5
func _on_Timer5_timeout():
	car_spawn(5)

