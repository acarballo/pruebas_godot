extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	print("level_1 listo")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _input(event):
	# print(event);
	if event.is_action_pressed("volver_menu_principal"):
		get_tree().change_scene_to_file("res://main.tscn")
	
