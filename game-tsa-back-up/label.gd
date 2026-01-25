extends Label

var example_text = "This is an example\n And this is a new line"



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	scroll_text(example_text)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func scroll_text(input_text:String) -> void:
	visible_characters = 0
	text = input_text
	
