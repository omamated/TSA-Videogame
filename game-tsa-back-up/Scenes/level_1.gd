extends Node2D
@onready var animation_player: AnimationPlayer = $Area2D_for_breaking/AnimationPlayer



func _ready() -> void:
	$FadeTransitions/AnimationPlayer.play("Fade_Out")
	_setup_level()


func _on_area_2d_for_breaking_body_shape_entered(body_rid: RID, body: Node2D, body_shape_index: int, local_shape_index: int) -> void:
	animation_player.play("break_floor")
	pass # Replace with function body.
	
func _setup_level() -> void:
	var enemies = $".".get_node_or_null("EnemyHandler")
	if enemies:
		for enemy in enemies.get_children():
			enemy.player_died.connect(_on_player_died)
			
func _on_player_died(body):
	get_tree().change_scene_to_file("res://Scenes/MainMenu.tscn")
