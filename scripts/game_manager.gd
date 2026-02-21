extends Node
const BCKGRND = preload("uid://dqbjtopufxwbw")
const MENU = preload("uid://cu4q05phd3h2j")

var score = 0
@onready var score_label: Label = $ScoreLabel

func add_point():
	score +=1
	score_label.text = "You collected " + str(score) + " coins."
