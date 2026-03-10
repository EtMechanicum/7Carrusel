extends Node
class_name CardFactory
var card_scene = preload("res://scenes/card.tscn")
func create_card(marble, card_index):
	var card = card_scene.instantiate()
	match card_index:
		0:
			card.data.name = "bomb"
			card.data.effect = BombEffect.new()
		1:
			card.data.name = "penguin"
			card.data.effect = ThePenguin.new()
	card.target = marble
	return card
