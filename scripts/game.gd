extends Node2D

var players_turn

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$PlayerMarble.game_over.connect(_on_players_game_over)
	$EnemyMarble.game_over.connect(_on_enemys_game_over)
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
	print("it's enemy's turn")
	$EnemyCardManager.enemy_turn()
	
func _on_player_marble_property_list_changed() -> void:
	#Player's turn starts
	players_turn = true
	print("it's player's turn")
	
func _on_players_game_over():
	print("Enemy wins!")
	
func _on_enemys_game_over():
	print("Player wins!")
