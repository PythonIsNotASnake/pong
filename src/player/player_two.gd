extends Player


func _physics_process(delta: float) -> void:
	#super._physics_process(delta)
	var direction: = get_direction()
	velocity = calculate_move_velocity(velocity, direction, speed)
	move_and_slide()


func get_direction() -> Vector2:
	return Vector2(
		0.0,
		Input.get_action_strength("move_down_two") - Input.get_action_strength("move_up_two")
	)


func calculate_move_velocity(
		linear_velocity: Vector2,
		direction: Vector2,
		speed: Vector2
	) -> Vector2:
	var out: = linear_velocity
	out.y = speed.y * direction.y
	return out
