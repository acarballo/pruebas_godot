extends Area2D




func _on_body_entered(body):	
	# print_debug(body)
	if body.name == "Player":		
		Global.gems_collected += 1
		print_debug(Global.gems_collected)
		queue_free()
