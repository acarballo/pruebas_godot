extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	print("Main menu listo")
	$Options/BotonInicio.grab_focus()

func _on_boton_inicio_pressed():
	Global.gems_collected = 0
	get_tree().change_scene_to_file("res://level_1.tscn")


func _on_boton_salir_pressed():
	get_tree().quit()


func _on_boton_full_pressed():
	#print("toogle")
	#print_debug(DisplayServer.window_get_mode())
	if DisplayServer.window_get_mode() != DisplayServer.WINDOW_MODE_FULLSCREEN:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
	else :
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED)
