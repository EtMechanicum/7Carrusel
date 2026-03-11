extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	position = Vector2(360, 283)
	
func roll(card):
	card.data.effect.apply(randi() % 12, card.target)

func starter_roll():
	return randi() % 2

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
