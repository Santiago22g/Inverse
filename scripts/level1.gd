extends Node2D

func _ready():
	GameManager.current_scene = get_tree().current_scene.scene_file_path
