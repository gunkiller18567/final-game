extends Node2D

var beautiful = 1

var ethan = true && beautiful

@onready var rect = $ColorRect
@onready var pause_menu = $canvaslayer/pause_menu

@onready var asp = $tree_trigger/AudioStreamPlayer_tree
@onready var asp2 = $cardinal_trigger/AudioStreamPlayer_cardinal
@onready var asp3 = $pretend_cardinal_trigger/AudioStreamPlayer_pretendcardinal
@onready var asp4 = $pretend_cardinal_trigger/AudioStreamPlayer_angrycardinal

var rf = 100

func _ready() -> void:
	pause_menu.visible = false

	for trans in range(101):
		rect.color = Color(0,0,0, rf / 100.0)
		await get_tree().create_timer(0.01).timeout
		rf -= 1

func _process(_delta):
	if Input.is_action_just_pressed("ui_cancel"):
		toggle_pause()

func toggle_pause():
	get_tree().paused = !get_tree().paused
	pause_menu.visible = get_tree().paused

func _on_area_2d_area_shape_entered(_area_rid: RID, _area: Area2D, _area_shape_index: int, _local_shape_index: int) -> void:
	get_tree().change_scene_to_file("res://game/scenes/win_screen.tscn")

var etner = true

func _on_cardinal_trigger_area_entered(area: Area2D) -> void:
	if etner:
		asp2.play()
		etner = false
		if area.get_collision_layer_value(8):
			for trans in range(11):
				$maximillian/CharacterBody2D/wic.modulate = Color(1, 1, 1, trans / 5.0)
				await get_tree().create_timer(0.05).timeout
			await get_tree().create_timer(3).timeout
			rf = 10
			for trans in range(11):
				$maximillian/CharacterBody2D/wic.modulate = Color(1, 1, 1, rf / 5.0)
				await get_tree().create_timer(0.05).timeout
				rf -= 1

var etner2 = true

func _on_tree_trigger_area_entered(area: Area2D) -> void:
	if etner2:
		asp.play()
		etner2 = false
		if area.get_collision_layer_value(8):
				for trans in range(11):
					$maximillian/CharacterBody2D/wit.modulate = Color(1, 1, 1, trans / 5.0)
					await get_tree().create_timer(0.05).timeout
				await get_tree().create_timer(3).timeout
				rf = 10
				for trans in range(11):
					$maximillian/CharacterBody2D/wit.modulate = Color(1, 1, 1, rf / 5.0)
					await get_tree().create_timer(0.05).timeout
					rf -= 1

var etner3 = true

func _on_pretend_cardinal_trigger_area_entered(area: Area2D) -> void:
	if etner3:
		asp3.play()
		await get_tree().create_timer(1.0).timeout
		asp4.play()
		etner3 = false
		if area.get_collision_layer_value(8):
				for trans in range(11):
					$maximillian/CharacterBody2D/watf.modulate = Color(1, 1, 1, trans / 5.0)
					await get_tree().create_timer(0.05).timeout
				await get_tree().create_timer(3).timeout
				rf = 10
				for trans in range(11):
					$maximillian/CharacterBody2D/watf.modulate = Color(1, 1, 1, rf / 5.0)
					await get_tree().create_timer(0.05).timeout
					rf -= 1
