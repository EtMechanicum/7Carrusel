extends Effect
class_name SmilingPorcupine

#base stats
var s = 0.03
var e = -3

var msgs = [
"A place once inhabited is found empty, with no signs of departure.",
"Someone notices that fewer voices answer each passing day.",
"A settlement continues its routines, despite missing people.",
"No one recalls the last time the streets were full.",
"A name is spoken, but no one remembers who it belonged to.",
"Homes remain intact, their occupants no longer present.",
"People begin to avoid counting how many are left.",
"Entire families are reduced to a single, silent witness.",
"Records show inconsistencies in population, but no one investigates.",
"Cities function, though most of them are no longer there.",
"Only a few remain, though no one can say when the others vanished.",
"The world lays sick in silence."
]

func apply(roll_result, target):
	print(msgs[roll_result])
	target.silence += s*multiplyers[roll_result]
	target.entropy += e*multiplyers[roll_result]
	target.print_status()
	target.notify_end_turn()

	target.print_status()
	target.notify_end_turn()
