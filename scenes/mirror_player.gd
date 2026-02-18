extends CharacterBody2D
const SPEED = 130.0
const JUMP_VELOCITY = -300.0

func _physics_process(delta: float) -> void:
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Invertido: ui_down en lugar de ui_up
	if Input.is_action_just_pressed("ui_down") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Invertido: se intercambian left y right
	var direction := Input.get_axis("ui_right", "ui_left")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
