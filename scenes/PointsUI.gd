extends Control


@onready var label =$Panel/Label



func _ready():
	EventController.connect("points_collected", on_event_points_collected)

func on_event_points_collected(value : int) -> void:
	label.text = str(value)



func _on_music_pressed():
	var musicBg = $Panel/music/AudioStreamPlayer
	if musicBg.stream_paused == false:
		musicBg.stream_paused = true
	else:
		musicBg.stream_paused = false

