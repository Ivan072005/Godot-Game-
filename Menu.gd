extends Control

var is_open = false

func _ready():
	close()

func _process(delta):
	if Input.is_action_just_pressed("menu"):
		print("m")
		if is_open:
			close()
		else:
			open()

func open():
	self.visible = true
	is_open = true

func close():
	self.visible = false
	is_open = false


func _on_restart_pressed():
	get_tree().reload_current_scene()


func _on_quit_pressed():
	get_tree().change_scene_to_file("res://scene/main_menu.tscn")
