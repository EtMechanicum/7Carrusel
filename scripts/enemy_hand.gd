extends Node2D

@export var card_scene: PackedScene
var card_factory = CardFactory.new()
var cards = []
const X_POS = 120
const Y_POS = 100
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	for i in range(5):
		#for now it creates only bomb cards
		var card = card_factory.create_card(get_parent().get_parent().get_node("PlayerMarble"), 
			randi() % 2)
		add_child(card)
		card.position = Vector2(100 + i*X_POS, Y_POS) #Adds a margin of 100 for the first card
		var game = get_tree().get_root().get_node("Game")
		card.card_played.connect(game._on_card_played)
		card.remove_me.connect(_on_child_remove_me)
		cards.append(card)

func rearrange_cards_position() -> void:
	var i = 0
	while i < cards.size():
		for card in cards:
			card.position = Vector2(100 + i*X_POS, Y_POS)
			i += 1

func add_card_to_hand():
	var card = card_factory.create_card(get_parent().get_parent().get_node("PlayerMarble"),
		randi() % 2) #%2 since at the moment we only got two types of cards lol
	add_child(card)
	card.position = Vector2(100 + (cards.size() + 1)*X_POS, Y_POS) #Adds a margin of 100 for the first card
	var game = get_tree().get_root().get_node("Game")
	card.card_played.connect(game._on_card_played)
	card.remove_me.connect(_on_child_remove_me)
	cards.append(card)

func _on_child_remove_me(node):
	node.queue_free()
	cards.erase(node)
	add_card_to_hand()
	rearrange_cards_position()

func enemy_card_selection():
	var card = cards[randi() % cards.size()]
	card.enemy_plays_card()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
