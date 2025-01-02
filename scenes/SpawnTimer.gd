extends Timer

@export var smallFish = preload("res://foods/smallFish1.tscn")
@export var bigFish = preload("res://foods/bigFish.tscn")

func _on_timeout():
	randomize()
	var fish_instance = smallFish.instantiate() # W Godocie 4.x używamy `instantiate` do tworzenia instancji scen.
	var bigFish_instance = bigFish.instantiate()
	fish_instance.position = Vector2(randf_range(-1600, 3000), randf_range(-800, 1500)) 
	bigFish_instance.position = Vector2(randf_range(-1600, 3000), randf_range(-800, 1500)) 
	get_parent().add_child(fish_instance) # Dodajemy instancję ryby do nadrzędnego węzła.
	get_parent().add_child(bigFish_instance)
	wait_time = randf_range(0.5, 2.0) # Poprawiamy wartość `wait_time` na losową liczbę w przedziale.
