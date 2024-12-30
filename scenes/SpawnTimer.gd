extends Timer

@export var smallFish = preload("res://foods/smallFish1.tscn")

func _on_timeout():
	randomize()
	var fish_instance = smallFish.instantiate() # W Godocie 4.x używamy `instantiate` do tworzenia instancji scen.
	fish_instance.position = Vector2(randf_range(10, 990), randf_range(10, 590)) # Zastępujemy `randf_range` nową funkcją `rand_range`.
	get_parent().add_child(fish_instance) # Dodajemy instancję ryby do nadrzędnego węzła.
	wait_time = randf_range(0.5, 2.0) # Poprawiamy wartość `wait_time` na losową liczbę w przedziale.
