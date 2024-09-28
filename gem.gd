extends Area2D


signal gem_collected

func _on_body_entered(body):	
	# print_debug(body)
	if body.name == "Player":		
		Global.gems_collected += 1
		# print_debug(Global.gems_collected)
		$PickupFSX.play()
		gem_collected.emit()		
		#queue_free()


func _on_pickup_fsx_finished():
	queue_free()
