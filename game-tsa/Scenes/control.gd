extends Control

var button_type = null

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_back_button_pressed() -> void:
	button_type = "BackButton"
	$FadeTransitions.show()
	$FadeTransitions/BackTimer.start()
	$FadeTransitions/AnimationPlayer.play("Fade_In")
	


func _on_back_timer_timeout() -> void:
	if button_type == "BackButton":
		get_tree().change_scene_to_file("res://Scenes/MainMenu.tscn")
		$FadeTransitions/AnimationPlayer.play("Fade_Out")
		
