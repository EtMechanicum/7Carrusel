extends Node2D

var hp = 2000

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	position = Vector2(360, 100)

func take_damage(damage: int):
	hp -= damage
	print("remaining hp: %d" % hp)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
