extends CharacterBody2D

var speed: = Vector2(-400.0, 300.0)


func _physics_process(delta):
	if velocity.x == 0.0 and velocity.y == 0.0:
		velocity = speed
	var collision_info = move_and_collide(velocity * delta)
	if collision_info:
		velocity = velocity.bounce(collision_info.get_normal())
