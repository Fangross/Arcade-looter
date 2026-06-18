extends RigidBody2D

var grabbed : bool = false
var can_grab = false
@onready var multi: CollisionShape2D = $Area2D/CollisionShape2D




func _on_area_2d_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			can_grab = true


func _process(delta: float) -> void:
	if grabbed:
		var mouse_pos = get_global_mouse_position()
		
		
		global_position = lerp(global_position,mouse_pos,0.2)
		

func _input(event: InputEvent) -> void:

	if Input.is_action_pressed("lmb") and can_grab:
		grabbed = true
		multi.disabled = true

	if Input.is_action_just_released("lmb") and can_grab:
		grabbed = false
		can_grab = false
		multi.disabled = false
		
		
