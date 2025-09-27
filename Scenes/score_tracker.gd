extends Node

func _process(delta):
	$ScoreLabel.text = "Score: " + str(Globals.score)
