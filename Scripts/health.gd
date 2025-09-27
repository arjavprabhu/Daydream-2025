extends ProgressBar

func _ready():
	var max_value_amount = Globals.HEALTH_MAX
	var min_value_amount = Globals.HEALTH_MIN
	
func _process(delta):
	self.value = Globals.health
