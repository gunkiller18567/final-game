extends Area2D

func _on_body_entered(body) -> void:
	print("pain2")
	if body.is_in_group("climm"):
		if body.climbing == false:
			print("pain")
			body.climbing = true


func _on_body_exited(body) -> void:
	if body.is_in_group("climm"):
		if body.climbing == true:
			print("YAYY")
			body.climbing = false
