extends Node2D

@export var card_scene: PackedScene
var card_factory = CardFactory.new()
var cards = []
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	for i in range(5):
		#for now it creates only bomb cards
		var card = card_factory.create_bomb(get_parent().get_parent().get_node("EnemyMarble"))
		add_child(card)
		card.position = Vector2(100 + i*120, 400) #Adds a margin of 100 for the first card
		cards.append(card)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
