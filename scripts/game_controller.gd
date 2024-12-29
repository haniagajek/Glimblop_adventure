extends Node

var total_points: int = 0

func points_collected(value: int):
	total_points += value
	EventController.emit_signal("points_collected", total_points)
