extends Effect
class_name CozyUndergrounds

#base stats
var bi = 250 #base integrity
var be = 4 #base entropy
var msgs = [
"A few people retreat below the surface.",
"Hidden tunnels quietly expand.",
"Underground halls become unexpectedly popular.",
"Communities begin settling beneath the earth.",
"Subterranean cities grow comfortable.",
"The underground becomes strangely welcoming.",
"Life below ground flourishes.",
"Vast caverns are filled with activity.",
"The surface grows quieter.",
"Civilization slowly sinks underground.",
"The world above is increasingly abandoned.",
"Nearly everything important now lives below."
]

func apply(roll_result, target):
	match roll_result:
		0: 
			print(msgs[0])
			target.integrity -= bi*multiplyers[0]
			target.entropy -= be*multiplyers[0]
		1:
			print(msgs[1])
			target.integrity -= bi*multiplyers[1]
			target.entropy -= be*multiplyers[1]
		2:
			print(msgs[2])
			target.integrity -= bi*multiplyers[2]
			target.entropy -= be*multiplyers[2]
		3:
			print(msgs[3])
			target.integrity -= bi*multiplyers[3]
			target.entropy -= be*multiplyers[3]
		4:
			print(msgs[4])
			target.integrity -= bi*multiplyers[4]
			target.entropy -= be*multiplyers[4]
		5:
			print(msgs[5])
			target.integrity -= bi*multiplyers[5]
			target.entropy -= be*multiplyers[5]
		6:
			print(msgs[6])
			target.integrity -= bi*multiplyers[6]
			target.entropy -= be*multiplyers[6]
		7:
			print(msgs[7])
			target.integrity -= bi*multiplyers[7]
			target.entropy -= be*multiplyers[7]
		8:
			print(msgs[8])
			target.integrity -= bi*multiplyers[8] 
			target.entropy -= be*multiplyers[8]
		9:
			print(msgs[9])
			target.integrity -= bi*multiplyers[9]
			target.entropy -= be*multiplyers[9]
		10:
			print(msgs[10])
			target.integrity -= bi*multiplyers[10]
			target.entropy = be*multiplyers[10]
		11:
			print(msgs[11])
			target.integrity -= bi*multiplyers[11]
			target.entropy -= be*multiplyers[11]
	target.print_status()
	target.notify_end_turn()
