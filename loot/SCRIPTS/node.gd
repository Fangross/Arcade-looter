extends Node

@onready var label: Label = $"../../../coin slot/Label"
@onready var node: Marker2D = $"."
@onready var path_follow_2d: PathFollow2D = $".."
var ball = preload("res://SCENES/plinko_ball.tscn")
var speed = 200
var shoot = false
var score = 0

func _on_coin_button_pressed() -> void:
	if score < 2:
		score += 1
	label.text = str(score)




func _process(delta: float) -> void:
	path_follow_2d.progress += speed * delta
	if score == 2:
		shoot = true


func _on_texture_button_pressed() -> void:
	if shoot:
		var instance = ball.instantiate()
		get_tree().current_scene.add_child(instance)
		instance.global_position = node.global_position
		shoot = false
		score -= 2
		label.text = str(score)
		
