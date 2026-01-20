extends Node2D
@onready var anim := $Door/AnimationPlayer

func _ready():
	$AnimationPlayer.play("DoorClosed")



func _on_area_2d_body_entered(body: Node2D) -> void:
	$AnimationPlayer.play("DoorOpen")
	$AnimationPlayer.play("Button_down")
	pass # Replace with function body.
