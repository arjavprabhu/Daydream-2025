extends Node

var score = 0

func add_score(inc):
	score += inc
	print(score)

const MAX_HEALTH = 100

var current_health = MAX_HEALTH

signal healthChanged

func damage():
	healthChanged.emit()
