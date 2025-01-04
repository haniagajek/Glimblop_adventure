class_name bigFish extends CharacterBody2D

# Movement and configuration variables
var direction: Vector2 = Vector2.ZERO
@export var speed: int = 260
@export var value: int = 5

func _ready():
	# Randomize movement direction when the object is initialized
	randomize()
	direction.x = 1 if randf() > 0.5 else -1


func _physics_process(delta):
	# Set velocity and move the object
	velocity = direction * speed
	move_and_slide()

	# Flip sprite based on movement direction
	if direction.x < 0:
		$FoodSprite.flip_h = true
	elif direction.x > 0:
		$FoodSprite.flip_h = false

func _on_area_2d_body_entered(body):
	
	if body is Player:
		
		GameController.points_collected(value)
		
		
		var player_sprite = body.get_node("glimblop") 
		if player_sprite:
			player_sprite.texture = preload("res://sprites/dead_glimblop.png")
		
	
		queue_free()
