extends Node

var score = 0

var current_scene = ""

func add_point():
	score +=1
	$ScoreLbl.text= "You collected " + str(score) + " coins. "


func game_over():
	
	get_tree().change_scene_to_file("res://scenes/game_over.tscn")
