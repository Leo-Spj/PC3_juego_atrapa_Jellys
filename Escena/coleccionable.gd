extends Area2D

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player"):
		body.subirScore()
		queue_free()

func _process(delta: float) -> void:
	position.y += 10
