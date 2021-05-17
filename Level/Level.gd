extends Node

const CAR = preload("res://Car/Car.tscn")

# Timer signal
func _on_Timer_timeout():
	# creates instance of CAR
	var car = CAR.instance()
	# set position
	car.position = $'CarStart1'.position
	# adds child to level scene
	add_child(car)
