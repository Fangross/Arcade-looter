extends AnimatableBody2D


@onready var path_follow_2d: PathFollow2D = $".."
var speed = 100


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	path_follow_2d.progress += speed * delta
