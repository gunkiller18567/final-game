extends Node2D

@onready var rect = $ColorRect

var rf = 100

func _on_quit_pressed() -> void:
	get_tree().quit()

func _ready() -> void:
	for trans in range(101):
		rect.color = Color(0,0,0, rf / 100.0)
		await get_tree().create_timer(0.01).timeout
		rf -= 1
