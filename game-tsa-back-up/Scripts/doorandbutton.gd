extends Node2D

@onready var anim := $AnimationPlayer
@onready var door: Sprite2D = $Door
@onready var button: Sprite2D = $Button
func _ready() -> void:
	anim.play("Door_init")
	anim.play("Arrow")
func _on_area_2d_body_entered(_body: Node2D) -> void:
	anim.play("DoorOpen")
	anim.queue("Button_down")  # Queue the button animation to play after DoorOpen
