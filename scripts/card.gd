extends Node2D
class_name Card
var data = CardData.new()
var target
signal remove_me(node)
signal card_played(card)

func set_data(new_data: CardData):
	data = new_data
	update_visual()

func update_visual():
	if data and data.texture:
		$Sprite2D.texture = data.texture

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if data and data.texture:
		$Sprite2D.texture = data.texture

func _on_area_2d_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.pressed:
		$PopupMenu.popup()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_click_on_card(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.is_pressed():
		print("you're clicking a card")
		emit_signal("card_played", self)
		die()
		
func die():
	emit_signal("remove_me", self)
