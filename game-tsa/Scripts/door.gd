extends Area2D

@export var door: Node2D

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		door.toggle_door()
