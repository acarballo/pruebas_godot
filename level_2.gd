extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _input(event):
	# print(event);
	if event.is_action_pressed("volver_menu_principal"):
		get_tree().change_scene_to_file("res://main.tscn")

func _on_door_body_entered(body):
	if body == $Player:
		get_tree().change_scene_to_file("res://level_1.tscn")
