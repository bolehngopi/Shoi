extends MarginContainer


@export var main_menu : MarginContainer


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_start_button_pressed():
	main_menu.hide()


func _on_option_button_pressed():
	print("Pressed")


func _on_credits_button_pressed():
	print("Pressed")
