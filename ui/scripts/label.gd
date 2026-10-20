extends Label

var new_color : Color

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	randomize()
	modulate = Color(0.49803922, 1, 0, 1,)

	new_color = Color(0.13333334, 0.54509807, 0.13333334, 1)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	modulate = lerp(modulate, new_color, 0.01)

func _on_timer_timeout() -> void:
	new_color = (Color(randf(), randf(), randf(), 1.0))
