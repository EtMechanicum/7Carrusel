extends Effect
class_name ThePenguin

#base stats
var boid = 5
var integrity = 0
var entropy = 1

func apply(roll_result, target):
	match roll_result:
		0: 
			print("A small penguin wanders across a deserted shore. 
				No one remembers seeing penguins here before")
			target.integrity -= 50
			target.entropy += 1
			target.boid += 1
		1:
			print("Witnesses report a silent penguin standing in the middle of a road, 
				staring at the horizon.")
			target.integrity -= 80
			target.entropy += 2
			target.boid += 2
		2:
			print("A strange penguin appears briefly in a crowded street. 
				People feel unsettled but cannot say why.")
			target.integrity -= 120
			target.entropy += 3
			target.boid += 3
		3:
			print("Tracks resembling those of a penguin are found in places no animal could have reached.")
			target.integrity -= 180
			target.entropy += 4
			target.boid += 5
		4:
			print("A penguin is seen walking calmly through an industrial district. 
				Machinery begins malfunctioning shortly after.")
			target.integrity -= 250
			target.entropy += 5
			target.boid += 7
		5:
			print("Several citizens report seeing the same penguin in distant locations within minutes")
			target.integrity -= 350
			target.entropy += 6
			target.boid += 10
		6:
			print("A penguin stands motionless in a city square for hours. 
				The crowd slowly disperses, uneasy")
			target.integrity -= 500
			target.entropy += 8
			target.boid += 14
		7:
			print("The creature appears near a research facility. 
				Instruments begin returning impossible readings")
			target.integrity -= 700
			target.entropy += 10
			target.boid += 18
		8:
			print("A large gathering forms around a silent penguin. 
				Nobody can explain why they feel compelled to watch.")
			target.integrity -= 950
			target.entropy += 12
			target.boid += 23
		9:
			print("A penguin is found in the ruins of a collapsed structure. 
				No one saw the collapse happen.")
			target.integrity -= 1200
			target.entropy += 15
			target.boid += 30
		10:
			print("A penguin stands alone in an empty field. 
				For a moment, the sky above it seems… deeper than it should be")
			target.integrity -= 1200
			target.entropy += 20
			target.boid += 40
		11:
			print("A penguin dances at the breeze. The end has begun.")
			target.integrity -= 2000
			target.entropy += 25
			target.boid += 50
	target.print_status()
