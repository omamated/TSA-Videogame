extends Node2D

@onready var anim := $AnimationPlayer
@onready var area := $Area2D  # Reference to the Area2D node

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		area.set_deferred("monitoring", false)  # Specify the area node
		print("hi")
		anim.play("drop")
		anim.queue("wall")
		anim.queue("run")
		anim.queue("Roller")
		
		# Re-enable after all animations complete (optional)
		await anim.animation_finished
		area.set_deferred("monitoring", true)  # Re-enable on the area node
