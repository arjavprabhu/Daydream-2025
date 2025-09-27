extends ProgressBar

@onready var game_manager: Node = $"../../GameManager"

func _ready():
	game_manager.healthChanged.connect(update)
	update()

func update():
	value = game_manager.currentHealth * 100 / game_manager.maxHealth
