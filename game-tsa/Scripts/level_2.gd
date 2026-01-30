extends Node2D
@onready var animation_player: AnimationPlayer = $Area2D_for_breaking/AnimationPlayer



func _ready() -> void:
	$FadeTransitions/AnimationPlayer.play("Fade_Out")
