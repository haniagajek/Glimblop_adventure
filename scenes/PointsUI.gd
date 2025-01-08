extends Control


@onready var label =$Panel/Label

var musicPlay = 0

func _ready():
	EventController.connect("points_collected", on_event_points_collected)

func on_event_points_collected(value : int) -> void:
	label.text = str(value)



func _on_music_pressed():
	if musicPlay == 1:
		$Panel/music/AudioStreamPlayer.stop()
		musicPlay = 0
	elif musicPlay == 0:
		$Panel/music/AudioStreamPlayer.play()
		musicPlay = 1
	
