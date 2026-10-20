extends AnimationPlayer

@onready var timer: Timer = $Timer
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	
	if Input.is_anything_pressed():
		stop()
		timer.start(2.0)
	

func _ready() -> void:
	timer.start(2.0)

func _on_timer_timeout() -> void:
	print("pain")
	play("idle")
