extends Node

@export var smallFish = preload("res://foods/smallFish1.tscn")
@export var bigFish = preload("res://foods/bigFish.tscn")

# Timer variables
var small_fish_timer: float = 0.0
var big_fish_timer: float = 0.0

func _ready():
	# Initialize timers with random wait times
	small_fish_timer = randf_range(0.5, 6.0)
	big_fish_timer = randf_range(2.0, 8.0)

func _process(delta):
	# Decrease timers by delta time
	small_fish_timer -= delta
	big_fish_timer -= delta

	# Check if it's time to spawn a small fish
	if small_fish_timer <= 0:
		_spawn_small_fish()
		# Reset the small fish timer
		small_fish_timer = randf_range(0.5, 6.0)

	# Check if it's time to spawn a big fish
	if big_fish_timer <= 0:
		_spawn_big_fish()
		# Reset the big fish timer
		big_fish_timer = randf_range(2.0, 8.0)

func _spawn_small_fish():
	randomize()
	var fish_instance = smallFish.instantiate()
	fish_instance.position = Vector2(randf_range(-1600, 3000), randf_range(-800, 1500))
	get_parent().add_child(fish_instance)

func _spawn_big_fish():
	randomize()
	var bigFish_instance = bigFish.instantiate()
	bigFish_instance.position = Vector2(randf_range(-1600, 3000), randf_range(-800, 1500))
	get_parent().add_child(bigFish_instance)

