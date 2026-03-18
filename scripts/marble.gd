extends Node2D

var dead = false #game over condition
signal game_over(node)
var integrity = 10000
var consciousness = {
	"logical thinking" : 100, #max is 100
	#"technology" : 1000, #max 1000
	"morality" : 100, #max 100
	"spirituality" : 100 #max 100
}
var silence = 100
var entropy = 0 #max 100
var boid = 0 #max 100


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	position = Vector2(100, 430)

func take_damage(damage: int):
	integrity -= damage
	print("remaining hp: %d" % integrity)

func notify_end_turn():
	var msg = check_end_game()
	if(dead):
		print(msg)
		emit_signal("game_over", self)
	notify_property_list_changed()
	
func check_end_game():
	if(integrity == 0):
		dead = true
		return "Planetary destruction"
	if(silence == 1):
		dead = true
		return "Total  extinction"
	if(entropy == 100):
		dead = true
		return "Entropy collapse"
	if(boid >= 85 and consciousness["spiritualiy"] >= 70 and 
		consciousness["logical thinking"] < 30):
		dead = true
		return "Cosmic awakening"
	if(consciousness["logical thinking"] >= 90 and consciousness["morality"] <= 20):
		dead = true
		return "Machine exodus"
	if(consciousness["spirituality"] >= 80 and consciousness["morality"] <= 30 and 
		entropy >= 60):
		dead = true
		return "Holy war extinction"
	if(boid >= 70 and entropy >= 80):
		dead = true
		return "Reality collapse"
	if(integrity <= 1500 and silence >= 0.6):
		dead = true
		return "Ecological death"
	return "checked"

func print_status():
	var result := ""
	
	result += "Integrity: %d\n" % integrity
	
	result += "Consciousness:\n"
	result += "  - Logical Thinking: %d\n" % consciousness["logical thinking"]
	result += "  - Morality: %d\n" % consciousness["morality"]
	result += "  - Spirituality: %d\n" % consciousness["spirituality"]
	
	result += "Silence: %d\n" % silence
	result += "Entropy: %d\n" % entropy
	result += "Boid: %d\n" % boid
	
	print(result)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
