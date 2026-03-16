extends Node

var score = 0
@onready var score_label: Label = $Score_label

func add_points() :
	score +=1
	score_label.text = "You collected " + str(score) + " coins."
	if score >= 10:
		get_tree().change_scene_to_file("res://scenes/win_screen.tscn")
