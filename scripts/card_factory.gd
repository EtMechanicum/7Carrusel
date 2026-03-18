extends Node
class_name CardFactory
var card_scene = preload("res://scenes/card.tscn")
func create_card(marble, card_index):

	var card = card_scene.instantiate()
	var data = CardData.new()

	match card_index:
		0:
			data.name = "bomb"
			data.effect = BombEffect.new()
			data.texture = preload("res://sprites/cards/bomb.png")

		1:
			data.name = "penguin"
			data.effect = ThePenguin.new()
			data.texture = preload("res://sprites/cards/penguin.png")
		2:
			data.name = "lonely flower"
			data.effect = LonelyFlower.new()
			data.texture = preload("res://sprites/cards/flower.png")
	card.set_data(data)
	card.target = marble
	return card
