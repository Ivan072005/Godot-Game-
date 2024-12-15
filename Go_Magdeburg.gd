extends Node2D

@export var next_scene : String

#GoToScene
func _on_go_to_scene_body_entered(body):
	if body.name != "player":
		return
	get_tree().change_scene_to_file("res://scene/magdeburg.tscn")

