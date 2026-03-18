extends Effect
class_name SomethingAwfulInTheSun

#base stats
var b = 5 #base boid
var s = 3 #base spirituality
var m = -3 #base morality

var msgs = [
]

func apply(roll_result, target):
	print(msgs[roll_result])
	target.consciousness["spirituality"] += s*multiplyers[roll_result]
	target.boid += b*multiplyers[roll_result]
	target.consciousness["morality"] += m*multiplyers[roll_result]
	target.print_status()
	target.notify_end_turn()

	target.print_status()
	target.notify_end_turn()
