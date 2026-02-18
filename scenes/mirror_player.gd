extends CharacterBody2D


const SPEED = 130.0
const JUMP_VELOCITY = -300.0


func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta
		if velocity.y < 0:
			$AnimatedSprite2D.play("jump")
	
	# El espejo salta cuando el principal no salta (invertido)
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	var direction := Input.get_axis("move_left", "move_right")
	var mirrored_direction := -direction

	if mirrored_direction > 0:
		$AnimatedSprite2D.scale.x = 1
	elif mirrored_direction < 0:
		$AnimatedSprite2D.scale.x = -1

	if mirrored_direction:
		velocity.x = mirrored_direction * SPEED
		if is_on_floor():
			$AnimatedSprite2D.play("run")
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		if is_on_floor():
			$AnimatedSprite2D.play("idle")

	move_and_slide()
