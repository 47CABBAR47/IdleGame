extends Control

@onready var startButton: Button = $MenuBox/StartButton
@onready var exitButton: Button = $MenuBox/ExitButton


func _ready() -> void:
	startButton.pressed.connect(start)
	exitButton.pressed.connect(exit)

func start():
	get_tree().change_scene_to_file("res://scanes/Camp.tscn")

func exit():
	get_tree().quit()
