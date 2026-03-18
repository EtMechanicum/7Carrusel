extends Effect
class_name HalfACross

#base stats
var m = 4
var s = -0.02

var msgs = [
"Someone carves half a symbol in wood.",
"The incomplete sign appears in quiet places.",
"People wonder about the missing half.",
"The mark spreads between travelers.",
"Some see hope in the broken symbol.",
"Communities adopt the strange emblem.",
"The sign appears in many towns.",
"People rally around the unfinished mark.",
"The symbol becomes widely recognized.",
"Entire regions embrace its meaning.",
"The mark inspires unusual unity.",
"The half-symbol becomes a universal sign."
]

func apply(roll_result, target):
	print(msgs[roll_result])
	target.consciousness["morality"] += m*multiplyers[roll_result]
	target.silence += s*multiplyers[roll_result]
	target.print_status()
	target.notify_end_turn()

	target.print_status()
	target.notify_end_turn()
