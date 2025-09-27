extends Node

var score: int = 0

var health: int = 100
const HEALTH_MAX: int = 100
const HEALTH_MIN: int = 0

func health_loss(amount):
	health -= amount
	if health <= 0:
		get_tree().change_scene_to_file("res://Scenes/game_over.tscn")
