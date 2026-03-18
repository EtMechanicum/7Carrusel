extends Effect
class_name BombEffect

var base_damage = 10.0

func apply(roll_result, target):
	match roll_result:
		0:
			print("Bombs stopped existing!")
			target.take_damage(base_damage * 0)
		1:
			print("A kid plays with firecrackers")
			target.take_damage(base_damage * 0.1)
		2: 
			print("case 3")
			target.take_damage(base_damage * 0.5)
		3:
			print("case 4")
			target.take_damage(base_damage * 0.8)
		4:
			print("case 5")
			target.take_damage(base_damage)
		5:
			print("case 6")
			target.take_damage(base_damage * 1.5)
		6:
			print("case_7")
			target.take_damage(base_damage * 2)
		7:
			print("case 8")
			target.take_damage(base_damage * 4)
		8:
			print("case 9")
			target.take_damage(base_damage * 8)
		9:
			print("case 10")
			target.take_damage(base_damage * 16)
		10: 
			print("case 11")
			target.take_damage(base_damage * 32)
		11:
			print("case 12")
			print("Nuclear fury")
			target.take_damage(base_damage * 64)
	target.notify_end_turn()
