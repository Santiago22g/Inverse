extends Node

var score = 0

@onready var score_lbl: Label = $ScoreLbl
var current_scene = ""

func add_point():
	score +=1
	score_lbl.text= "You collected " + str(score) + " coins. "


func game_over():
	
	get_tree().change_scene_to_file("res://scenes/game_over.tscn")
