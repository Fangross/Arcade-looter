extends Node2D



var follow = true



func _process(_delta: float) -> void:
	if follow:
		var mouse_pos = get_global_mouse_position()
		global_position = lerp(global_position,mouse_pos,.2)
