extends Control

@onready var rect = $ColorRect
@onready var thebuttons: VBoxContainer = $thebuttons
@onready var helpmenu: Panel = $helpmenu

var rf = 100

func _ready():
	thebuttons.visible = true
	helpmenu.visible = false
	
	for trans in range(101):
		rect.color = Color(0,0,0, rf / 100.0)
		await get_tree().create_timer(0.01).timeout
		rf -= 1

func _on_start_pressed() -> void:
	get_tree().change_scene_to_file("res://game/scenes/cutsene_1.tscn")

func _on_help_pressed() -> void:
	thebuttons.visible = false
	helpmenu.visible = true

func _on_quit_pressed() -> void:
	get_tree().quit()

func _on_back_options_pressed() -> void:
	_ready()
