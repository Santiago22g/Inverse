extends Area2D

@onready var timer = $Timer

func _on_body_entered(body):
	print("You died!")
	Engine.time_scale = 0.5
	timer.start()
	body.die()

func _on_timer_timeout() -> void:
	Engine.time_scale = 1.0
