extends Area2D



@onready var path_follow_2d_2: PathFollow2D = $".."


var speed = 75



func _process(delta: float) -> void:
	path_follow_2d_2.progress += speed * delta
