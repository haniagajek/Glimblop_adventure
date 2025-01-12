extends TextureProgressBar

func _ready():
	# Set the initial value of the progress bar
	value = GameController.total_points

func _process(delta):
	# Continuously check for changes in total_points and update the progress bar
	if value != GameController.total_points:
		value = GameController.total_points
		$"../../../../eatingSound".play()
