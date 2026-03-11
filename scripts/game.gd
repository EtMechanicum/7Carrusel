extends Node2D

var players_turn

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	players_turn = ($Dice.starter_roll() == 1)
	first_turn()
	

func _on_card_played(card):
	$Dice.roll(card)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func first_turn():
	if(players_turn):
		print("it's player's turn")
	else:
		print("it's enemy's turn")
		$EnemyCardManager.enemy_turn()

func _on_enemy_marble_property_list_changed() -> void:
	#Enemy's turn starts
	players_turn = false
	$EnemyCardManager.enemy_turn()
	


func _on_player_marble_property_list_changed() -> void:
	#Player's turn starts
	players_turn = true
	
