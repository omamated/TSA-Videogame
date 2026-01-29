extends Node2D

@onready var anim := $AnimationPlayer




func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.name == "Player":

		print("hi")  # Debug message to confirm it triggered
		anim.play("drop")
		anim.queue("run")
		anim.queue("Roller")
		
		
	pass # Replace with function body.
