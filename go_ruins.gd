extends Node2D

@export var next_scene : String

#Animation
func _on_animation_body_entered(body):
	if body.name == "player":
		return
		$Tree.show()


func _on_animation_body_exited(body):
	if body.name == "player":
		return
		$Tree.hide()

#GoToScene
func _on_go_to_scene_body_entered(body):
	if body.name != "player":
		return
	get_tree().change_scene_to_file("res://scene/ruins.tscn")
