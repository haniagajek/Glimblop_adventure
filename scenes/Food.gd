extends CharacterBody2D

var direction: Vector2 = Vector2.ZERO
@export var speed: int = 280
@export var value: int = 1

func _process(delta):
	direction =  Input.get_vector("left", "right", "up", "down")

func _physics_process(delta):
	velocity = direction * speed
	move_and_slide()

	if direction.x < 0:
			$FoodSprite.flip_h = true
	elif direction.x > 0:
			$FoodSprite.flip_h = false


func _on_area_2d_body_entered(body):
	if body is Player:
		GameController.points_collected(value)
		self.queue_free()
