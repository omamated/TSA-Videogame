extends Node2D
@onready var animation_player: AnimationPlayer = $Area2D_for_breaking/AnimationPlayer



func _ready() -> void:
	$FadeTransitions/AnimationPlayer.play("Fade_Out")


func _on_area_2d_for_breaking_body_shape_entered(body_rid: RID, body: Node2D, body_shape_index: int, local_shape_index: int) -> void:
	animation_player.play("break_floor")
	pass # Replace with function body.
