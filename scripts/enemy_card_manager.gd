extends Node2D
class_name EnemyCardManager

var hand: PackedScene = preload("res://scenes/hand.tscn")
#@export var card_slot: PackedScene

var marble 
#var player_hand
#var player_card_slot
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var enemy_hand = hand.instantiate()
	enemy_hand.set_script(load("res://scripts/enemy_hand.gd"))
	add_child(enemy_hand)
	marble = get_parent().get_node("EnemyMarble")
	
func enemy_turn():
	$Hand.enemy_card_selection()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
