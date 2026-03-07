extends Node2D
class_name CardManager

@export var hand: PackedScene
@export var card_slot: PackedScene

var marble 
#var player_hand
#var player_card_slot
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var player_hand = hand.instantiate()
	add_child(player_hand)
	var player_card_slot = card_slot.instantiate()
	add_child(player_card_slot)
	marble = get_parent().get_node("EnemyMarble")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
