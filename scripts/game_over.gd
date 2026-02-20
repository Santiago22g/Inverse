extends Control


func _on_restart_button_pressed() -> void:
	Engine.time_scale = 1.0
	get_tree().change_scene_to_file(GameManager.current_scene)


func _on_quit_button_pressed() -> void:
	get_tree().quit()
