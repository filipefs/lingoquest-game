extends Node2D
var velocity := Vector2(0, 0)
var max_speed := 150.0
var steering_factor := 10.0


func _process(delta: float) -> void:
	var direction := Vector2(0,0)
	direction.x = Input.get_axis("move_left", "move_right")
	direction.y = Input.get_axis("move_up", "move_down")
	
	#normaliza a velocidade de movimento na diagonal
	if direction.length() > 1.0:
		direction = direction.normalized()
	
	#steering
	var desired_velocity := max_speed * direction
	var steering_vector := desired_velocity - velocity
	
	velocity += steering_vector * steering_factor * delta
	position += velocity * delta
	
	
