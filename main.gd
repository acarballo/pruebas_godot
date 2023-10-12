extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	print("Main menu listo")

func _on_boton_inicio_pressed():
	get_tree().change_scene_to_file("res://level_1.tscn")


func _on_boton_salir_pressed():
	get_tree().quit()
