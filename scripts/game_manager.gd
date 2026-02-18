extends Node

var score = 0

@onready var score_lbl: Label = $ScoreLbl

func add_point():
	score +=1
	score_lbl.text= "You collected " + str(score) + " coins. "
