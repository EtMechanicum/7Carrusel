extends Node
class_name CardFactory
var card_scene = preload("res://scenes/card.tscn")
func create_bomb(marble):
	var bomb = card_scene.instantiate()
	bomb.data.name = "bomb"
	bomb.data.effect = BombEffect.new()
	bomb.target = marble
	return bomb
