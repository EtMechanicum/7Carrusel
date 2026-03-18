extends Effect
class_name HandfulOfGears

#base stats
var lt = 6
var e = 3
var m = -2

var msgs = [
	"Someone tinkers with loose gears.",
	"A small machine is assembled.",
	"Tools and gears circulate between inventors.",
	"Workshops begin experimenting.",
	"Ingenious mechanisms appear.",
	"Devices multiply across cities.",
	"Machines solve difficult problems.",
	"Automation spreads quickly.",
	"Industry accelerates unpredictably.",
	"Mechanical innovation surges.",
	"Machines reshape daily life.",
	"Mechanisms multiply beyond control."
]

func apply(roll_result, target):
	print(msgs[roll_result])
	target.consciousness["logical thinking"] += lt*multiplyers[roll_result]
	target.consciousness["morality"] += m*multiplyers[roll_result]
	target.entropy += e*multiplyers[roll_result]
	target.print_status()
	target.notify_end_turn()
