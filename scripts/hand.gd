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
		var game = get_tree().get_root().get_node("Game")
		card.card_played.connect(game._on_card_played)
		card.remove_me.connect(_on_child_remove_me)
		cards.append(card)

func rearrange_cards_position() -> void:
	var i = 0
	while i < cards.size():
		for card in cards:
			card.position = Vector2(100 + i*120, 400)
			i += 1

func _on_child_remove_me(node):
	node.queue_free()
	cards.erase(node)
	rearrange_cards_position()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
