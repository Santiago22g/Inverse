extends Node2D

var principal_listo = false
var espejo_listo = false

func _on_meta_principal_body_entered(body: Node2D) -> void:
	if body.name == "Player": 
		principal_listo = true
		comprobar_finalizacion()

func _on_meta_principal_body_exited(body: Node2D) -> void:
	if body.name == "Player":
		principal_listo = false

func _on_meta_espejo_body_entered(body: Node2D) -> void:
	if body.name == "MirrorPlayer": 
		espejo_listo = true
		comprobar_finalizacion()

func _on_meta_espejo_body_exited(body: Node2D) -> void:
	if body.name == "MirrorPlayer":
		espejo_listo = false

func comprobar_finalizacion():
	if principal_listo and espejo_listo:
		get_tree().call_deferred("change_scene_to_file", "res://scenes/level3.tscn")
