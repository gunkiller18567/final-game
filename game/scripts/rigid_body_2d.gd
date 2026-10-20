extends RigidBody2D

@onready var start_position: Vector2 = position
@onready var start_rotation: float = rotation

var should_reset: bool = false

func _integrate_forces(state: PhysicsDirectBodyState2D) -> void:
	if should_reset:
		state.transform.origin = start_position
		state.linear_velocity = Vector2.ZERO
		state.angular_velocity = 0.0
		should_reset = false
