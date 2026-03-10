extends Node2D
class_name Card
var data = CardData.new()
var target
signal remove_me(node)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

func _on_area_2d_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.pressed:
		$PopupMenu.popup()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_click_on_card(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.is_pressed():
		print("you're clicking a card")
		data.effect.apply(target)
		die()
		
func die():
	emit_signal("remove_me", self)
