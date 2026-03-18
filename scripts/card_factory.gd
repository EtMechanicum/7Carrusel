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
		3:
			data.name = "cozy undergrounds"
			data.effect = CozyUndergrounds.new()
			data.texture = preload("res://sprites/cards/underground.png")
		4:
			data.name = "old rhymes"
			data.effect = OldRhymes.new()
			data.texture = preload("res://sprites/cards/rhyme.png")
		5:
			data.name = "box of curiosities"
			data.effect = BoxOfCuriosities.new()
			data.texture = preload("res://sprites/cards/box.png")
		6:
			data.name = "handful of gears"
			data.effect = HandfulOfGears.new()
			data.texture = preload("res://sprites/cards/gears.png")
		7:
			data.name = "half a cross"
			data.effect = HalfACross.new()
			data.texture = preload("res://sprites/cards/halfcross.png")
		8:
			data.name = "smiling porcupine"
			data.effect = SmilingPorcupine.new()
			data.texture = preload("res://sprites/cards/porcupine.png")
		9:
			data.name = "something awful in the sun"
			data.effect = SomethingAwfulInTheSun.new()
			data.texture = preload("res://sprites/cards/awfulsun.png")
	card.set_data(data)
	card.target = marble
	return card
