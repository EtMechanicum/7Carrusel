extends Effect
class_name BombEffect

var base_damage = 10

func apply(target):
	target.take_damage(base_damage)
