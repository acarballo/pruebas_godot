extends Area2D

@export var level = ""
signal player_entered(level)


func _on_body_entered(body):
	print(body.name)
	if body.name == "Player":
		print("emitimos")
		player_entered.emit(level)
