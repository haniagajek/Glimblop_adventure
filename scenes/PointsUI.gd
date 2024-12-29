extends Control


@onready var label =$Label

func _ready():
	EventController.connect("points_collected", on_event_points_collected)

func on_event_points_collected(value : int) -> void:
	label.text = str(value)
