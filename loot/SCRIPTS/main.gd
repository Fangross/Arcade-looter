extends Node2D

const PLINKO = preload("res://SCENES/plinko.tscn")


func _ready() -> void:
	Input.mouse_mode = Input.MOUSE_MODE_HIDDEN
	
	
	
	#TEMPORARY
	var load_plinko = PLINKO.instantiate()
	get_tree().current_scene.add_child(load_plinko)
	
	

func _input(_event: InputEvent) -> void:
	if Input.is_action_just_pressed("esc"):
		get_tree().quit()
