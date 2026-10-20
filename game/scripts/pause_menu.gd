extends Control


@onready var thebuttons: VBoxContainer = $thebuttons
@onready var helpmenu: Panel = $helpmenu

func _on_resume_pressed() -> void:
	get_tree().paused = false
	visible = false


func _on_quit_pressed() -> void:
	get_tree().quit()

func _ready():
	thebuttons.visible = true
	helpmenu.visible = false

func _on_start_pressed() -> void:
	get_tree().change_scene_to_file("res://game/scenes/game.tscn")

func _on_help_pressed() -> void:
	thebuttons.visible = false
	helpmenu.visible = true

func _on_back_options_pressed() -> void:
	_ready()
