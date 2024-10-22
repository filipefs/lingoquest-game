extends Sprite2D
var velocity := Vector2(0, 0)
var max_speed := 200.0

func _process(delta: float) -> void:
	var direction := Vector2(0,0)
	direction.x = Input.get_axis("move_left", "move_right")
	direction.y = Input.get_axis("move_up", "move_down")
	
	velocity = direction * max_speed
	position += velocity * delta
