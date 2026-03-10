extends Node2D

var integrity = 10000
var vitality = 50 #max = 100
var consciousness = {
	"intelligence" : 1000, #max is 1000
	"technology" : 1000, #max 1000
	"morality" : 100, #max 100
	"spirituality" : 100 #max 100
}
var silence = 100
var entropy = 0 #max 100
var boid = 0 #max 100

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	position = Vector2(360, 100)

func take_damage(damage: int):
	integrity -= damage
	print("remaining hp: %d" % integrity)

func print_status():
	print("integrity: {0}, entropy: {1}, void: {2}".format([integrity, entropy, boid]))

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
