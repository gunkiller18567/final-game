extends Area2D

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("climm"):
		if body.climbing == false:
			body.climbing = true


func _on_body_exited(body: Node2D) -> void:
	if body.is_in_group("climm"):
		if body.climbing == true:
			body.climbing = false
