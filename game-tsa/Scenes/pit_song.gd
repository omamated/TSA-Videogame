extends Area2D
@onready var the_pit: AudioStreamPlayer = $".."

var music = "res://Music/smooth-menu-background-449731.mp3"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func _on_body_entered(body):
	if body.is_in_group("player"):
		get_parent().crossfade_to(music)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
