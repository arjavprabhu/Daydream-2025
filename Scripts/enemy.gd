extends CharacterBody2D


var speed = 50.0
var switch_timer_max = 210
var switch_timer = switch_timer_max

func _physics_process(delta: float) -> void:
	switch_timer -= 1
	if switch_timer <= 0:
		speed = -1 * speed
		switch_timer = switch_timer_max
	velocity.x = speed
	var collision = move_and_collide(velocity * delta)
	if collision:
		Globals.health_loss(2)
