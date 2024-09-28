extends Node2D
@export var level_num = 0;

func _ready():
	print("level " + str(level_num) + " ready")	
	$Hud/CurrentLabel.text = "level: " + str(level_num)
	set_gem_value()
	for gem in $Gems.get_children():
		gem.gem_collected.connect(_on_gem_collected)

#func _on_door_body_entered(body):
#	print_debug("entrando puerta")
#	if body == $Player:
		#get_tree().change_scene_to_file("res://level_2.tscn")
#		get_tree().change_scene_to_file($Door.Level)

func _on_gem_collected():
	$Hud/Score.text = "Gems: " + str(Global.gems_collected)

func set_gem_value():
	$Hud/Score.text = "Gems: " + str(Global.gems_collected)

func _on_door_player_entered(level):
		print("-- " + level)
		get_tree().change_scene_to_file(level)

func _input(event):
	if event.is_action_pressed("reset_level"):
		get_tree().reload_current_scene.call_deferred()
		Global.gems_collected = 0
		set_gem_value()
		
		
