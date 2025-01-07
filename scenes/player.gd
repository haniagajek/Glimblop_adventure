class_name Player extends CharacterBody2D

var direction: Vector2 = Vector2.ZERO
@export var speed: int = 400


func _process(delta):
	direction =  Input.get_vector("left", "right", "up", "down")
	if GameController.total_points > 5:
		$glimblop.texture = preload("res://sprites/glimblop-2.png")

func _physics_process(delta):
	velocity = direction * speed
	move_and_slide()

	# Obsługa flip_h w zależności od kierunku ruchu w osi X
	if direction.x < 0:
		$glimblop.flip_h = true
	
	elif direction.x > 0:
		$glimblop.flip_h = false


