extends Control


func _ready():
	hide()

func _unhandled_input(event):
	if event.is_action_pressed("pause"):
		toggle_pause()

func toggle_pause():
	var is_paused = not get_tree().paused
	get_tree().paused = is_paused
	visible = is_paused

func _on_resume_pressed() -> void:
	toggle_pause()


func _on_restart_pressed() -> void:
	get_tree().paused = false
	get_tree().change_scene_to_file(GameManager.current_scene)


func _on_quit_pressed() -> void:
	get_tree().paused = false
	get_tree().change_scene_to_file("res://scenes/menu.tscn")
