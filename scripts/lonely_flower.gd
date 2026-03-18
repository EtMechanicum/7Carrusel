extends Effect
class_name LonelyFlower

#base stats
var bi = 250 #base integrity
var be = 2 #base entropy
var msgs = [
	"A single flower grows through cracked stone.",
	"A small patch of stubborn life spreads quietly.",
	"A lonely bloom survives where nothing should.",
	"Roots push deeper than expected.",
	"A fragile garden begins to take shape.",
	"Green returns to forgotten ground.",
	"Wild growth surprises the caretakers.",
	"The land answers with unexpected vitality.",
	"Forest spirits seem unusually generous.",
	"Entire valleys bloom overnight.",
	"Nature surges with overwhelming force.",
	"The world erupts in unstoppable life."
]

func apply(roll_result, target):
	match roll_result:
		0: 
			print(msgs[0])
			target.integrity += bi*multiplyers[0]
			target.entropy += be*multiplyers[0]
		1:
			print(msgs[1])
			target.integrity += bi*multiplyers[1]
			target.entropy += be*multiplyers[1]
		2:
			print(msgs[2])
			target.integrity += bi*multiplyers[2]
			target.entropy += be*multiplyers[2]
		3:
			print(msgs[3])
			target.integrity += bi*multiplyers[3]
			target.entropy += be*multiplyers[3]
		4:
			print(msgs[4])
			target.integrity += bi*multiplyers[4]
			target.entropy += be*multiplyers[4]
		5:
			print(msgs[5])
			target.integrity += bi*multiplyers[5]
			target.entropy += be*multiplyers[5]
		6:
			print(msgs[6])
			target.integrity += bi*multiplyers[6]
			target.entropy += be*multiplyers[6]
		7:
			print(msgs[7])
			target.integrity += bi*multiplyers[7]
			target.entropy += be*multiplyers[7]
		8:
			print(msgs[8])
			target.integrity += bi*multiplyers[8] 
			target.entropy += be*multiplyers[8]
		9:
			print(msgs[9])
			target.integrity += bi*multiplyers[9]
			target.entropy += be*multiplyers[9]
		10:
			print(msgs[10])
			target.integrity += bi*multiplyers[10]
			target.entropy += be*multiplyers[10]
		11:
			print(msgs[11])
			target.integrity += bi*multiplyers[11]
			target.entropy += be*multiplyers[11]
	target.print_status()
	target.notify_end_turn()
