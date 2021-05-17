if (global.hp <= 0) {
	global.death = true
	if (sleep){
		time--
	}else{
		time = 0.2 * room_speed
		sleep = true
		global.death = false
		global.hp = 100
		global.start_move = false
		room_goto(Room1)
	}

	if (time == 0){
		sleep = false
	}
}

	
	
