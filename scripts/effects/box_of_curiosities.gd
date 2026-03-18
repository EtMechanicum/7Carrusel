extends Effect
class_name BoxOfCuriosities

#base stats
var s = 7
var lt = -4
var b = 3

var msgs = [
	"If you hear something moving inside the box, do not open it immediately.",
	"The object you found was not meant to be catalogued.",
	"Do not attempt to explain what you are seeing. It does not follow explanation.",
	"If others begin to show interest, it is already too late to contain it.",
	"Those who study the contents too closely will begin to prioritize it above all else.",
	"If any item behaves incorrectly, stop observing it. It has noticed you.",
	"Should a crowd gather, leave the area. The box prefers witnesses.",
	"If scholars and mystics agree on its nature, you are in immediate danger.",
	"When multiple objects defy natural law, do not attempt to separate them.",
	"If you feel uneasy in its presence, it is because you understand something you shouldn't.",
	"If you hear whispering, do not respond. It is not speaking to you.",
	"If the box opens on its own, do not look inside. You will not be able to look away."
]

func apply(roll_result, target):
	match roll_result:
		0: 
			print(msgs[0])
			target.consciousness["spirituality"] += s*multiplyers[0]
			target.consciousness["logical thinking"] += lt*multiplyers[0]
			target.boid += b
		1:
			print(msgs[1])
			target.consciousness["spirituality"] += s*multiplyers[1]
			target.consciousness["logical thinking"] += lt*multiplyers[1]
			target.boid += b
		2:
			print(msgs[2])
			target.consciousness["spirituality"] += s*multiplyers[2]
			target.consciousness["logical thinking"] += lt*multiplyers[2]
			target.boid += b
		3:
			print(msgs[3])
			target.consciousness["spirituality"] += s*multiplyers[3]
			target.consciousness["logical thinking"] += lt*multiplyers[3]
			target.boid += b
		4:
			print(msgs[4])
			target.consciousness["spirituality"] += s*multiplyers[4]
			target.consciousness["logical thinking"] += lt*multiplyers[4]
			target.boid += b
		5:
			print(msgs[5])
			target.consciousness["spirituality"] += s*multiplyers[5]
			target.consciousness["logical thinking"] += lt*multiplyers[5]
			target.boid += b
		6:
			print(msgs[6])
			target.consciousness["spirituality"] += s*multiplyers[6]
			target.consciousness["logical thinking"] += lt*multiplyers[6]
			target.boid += b
		7:
			print(msgs[7])
			target.consciousness["spirituality"] += s*multiplyers[7]
			target.consciousness["logical thinking"] += lt*multiplyers[7]
			target.boid += b
		8:
			print(msgs[8])
			target.consciousness["spirituality"] += s*multiplyers[8]
			target.consciousness["logical thinking"] += lt*multiplyers[8]
			target.boid += b
		9:
			print(msgs[9])
			target.consciousness["spirituality"] += s*multiplyers[9]
			target.consciousness["logical thinking"] += lt*multiplyers[9]
			target.boid += b
		10:
			print(msgs[10])
			target.consciousness["spirituality"] += s*multiplyers[10]
			target.consciousness["logical thinking"] += lt*multiplyers[10]
			target.boid += b
		11:
			print(msgs[11])
			target.consciousness["spirituality"] += s*multiplyers[11]
			target.consciousness["logical thinking"] += lt*multiplyers[11]
			target.boid += b
	target.print_status()
	target.notify_end_turn()
