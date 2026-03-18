extends Effect
class_name OldRhymes

#base stats
var m = 5 #base morality
var lt = 5 #base logical thinking
var msgs = [
	"Someone whispers an old saying best left forgotten.",
	"A rhyme resurfaces, carried by uneasy voices.",
	"Ancient words return, stripped of comfort.",
	"People repeat the verse, as if compelled.",
	"The rhyme spreads, unsettling those who hear it.",
	"Scholars dissect the words with growing obsession.",
	"The verse exposes truths few wished to see.",
	"The rhyme binds minds in cold understanding.",
	"Generations echo the words without questioning why.",
	"The rhyme dictates choices with quiet authority.",
	"Its logic becomes impossible to ignore.",
	"The verse hardens into an unquestioned doctrine."
]

func apply(roll_result, target):
	match roll_result:
		0: 
			print(msgs[0])
			target.consciousness["morality"] += m*multiplyers[0]
			target.consciousness["logical thinking"] = lt*multiplyers[0]
		1:
			print(msgs[1])
			target.consciousness["morality"] += m*multiplyers[1]
			target.consciousness["logical thinking"] = lt*multiplyers[1]
		2:
			print(msgs[2])
			target.consciousness["morality"] += m*multiplyers[2]
			target.consciousness["logical thinking"] = lt*multiplyers[2]
		3:
			print(msgs[3])
			target.consciousness["morality"] += m*multiplyers[3]
			target.consciousness["logical thinking"] = lt*multiplyers[3]
		4:
			print(msgs[4])
			target.consciousness["morality"] += m*multiplyers[4]
			target.consciousness["logical thinking"] = lt*multiplyers[4]
		5:
			print(msgs[5])
			target.consciousness["morality"] += m*multiplyers[5]
			target.consciousness["logical thinking"] = lt*multiplyers[5]
		6:
			print(msgs[6])
			target.consciousness["morality"] += m*multiplyers[6]
			target.consciousness["logical thinking"] = lt*multiplyers[6]
		7:
			print(msgs[7])
			target.consciousness["morality"] += m*multiplyers[7]
			target.consciousness["logical thinking"] = lt*multiplyers[7]
		8:
			print(msgs[8])
			target.consciousness["morality"] += m*multiplyers[8]
			target.consciousness["logical thinking"] = lt*multiplyers[8]
		9:
			print(msgs[9])
			target.consciousness["morality"] += m*multiplyers[9]
			target.consciousness["logical thinking"] = lt*multiplyers[9]
		10:
			print(msgs[10])
			target.consciousness["morality"] += m*multiplyers[10]
			target.consciousness["logical thinking"] = lt*multiplyers[10]
		11:
			print(msgs[11])
			target.consciousness["morality"] += m*multiplyers[11]
			target.consciousness["logical thinking"] = lt*multiplyers[11]
	target.print_status()
	target.notify_end_turn()
