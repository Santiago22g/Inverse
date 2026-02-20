extends Area2D

var players_inside = []
var total_players = 2

func _on_body_entered(body):
	if body.is_in_group("players"):
		if body not in players_inside:
			players_inside.append(body)
		check_all_players()

func _on_body_exited(body):
	if body.is_in_group("players"):
		players_inside.erase(body)

func check_all_players():
	if players_inside.size() >= total_players:
		next_level()

func next_level():
	get_tree().call_deferred("change_scene_to_file", "res://scenes/level2.tscn")
