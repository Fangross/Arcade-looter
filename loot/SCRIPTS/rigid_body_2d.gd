extends RigidBody2D

var grabbed : bool = false
var hand = false

func _on_area_2d_area_entered(area: Area2D) -> void:
	var hand = true

func _process(_delta: float) -> void:
	if grabbed:
		var mouse_pos = get_global_mouse_position()
		global_position = lerp(global_position,mouse_pos,0.2)
		return

func _input(event: InputEvent) -> void:

	if Input.is_action_pressed("lmb") and hand:
		grabbed = true
	if Input.is_action_just_released("lmb") and hand:
		grabbed = false
