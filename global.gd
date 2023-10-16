extends Node

var gems_collected = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	print_debug("global listo") # Replace with function body.

func _input(event):
	# print(event);
	if event.is_action_pressed("volver_menu_principal"):
		get_tree().change_scene_to_file("res://main.tscn")
