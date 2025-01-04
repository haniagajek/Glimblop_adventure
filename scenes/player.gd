class_name Player extends CharacterBody2D

var direction: Vector2 = Vector2.ZERO
@export var speed: int = 400

func _process(delta):
	direction =  Input.get_vector("left", "right", "up", "down")

func _physics_process(delta):
	velocity = direction * speed
	move_and_slide()

	# Obsługa flip_h w zależności od kierunku ruchu w osi X
	if direction.x < 0:
		$glimblop.flip_h = true
	
	elif direction.x > 0:
		$glimblop.flip_h = false



func _on_area_2d_body_entered(body):
	if body.name == "BigFish":  # Alternatively, check if the body belongs to the correct group
		$glimblop.texture = preload("res://sprites/bigFish.png")
