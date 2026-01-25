extends RichTextLabel

var example_text = "Credits:\n Game Name: OneButton \n This game is created for the TSA Competition\n Produced by: Ayaan, Om, Darsh, Mia, Evan, Nabiha\nSources:\n Music: Pixabay\n Graphics: David G on Itch.io\n With Help By: F3rn\n-Thank you for playing!- "



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	scroll_text(example_text)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func scroll_text(input_text:String) -> void:
	visible_characters = 0
	text = input_text
	
	for i in get_parsed_text():
		visible_characters += 1
		await get_tree().create_timer(0.04).timeout
