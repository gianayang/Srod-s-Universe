
if (global.start_move == true) {
	event_inherited()
	if (sleep){
		time--
	}else{
		time = 0.5 * room_speed
		sleep = true
		if instance_exists(obj_player) {
			var dir = point_direction(x,y,obj_player.x, obj_player.y)
			if (dir < 270 and dir > 90) and not position_meeting(x - 80, y - 64,obj_collidable) and not position_meeting(x + 80, y - 64,obj_collidable){
				R_hold = false
				L_hold = true
			}else{
				R_hold = true
				L_hold = false
			}
		}
	}

	if (time == 0){
		sleep = false
	}

	if (sleep_1){
		time_1--
	}else{
		time_1 = 6 * room_speed
		sleep_1 = true
		instance_create_layer(x + 24, y - 37, "Effects", obj_enemy_bullet)
	}

	if (time_1 == 0){
		sleep_1 = false
	}


	if (sleep_2) {
		time_2--
	}else{
		time_2 = 1 * room_speed
		sleep_2 = true
		action_1_pressed = false
	
	}
	if (time_2 == 0) {
		sleep_2 = false
		if position_meeting(x - 60, y - 80,obj_platform_1) or position_meeting(x + 60, y - 80,obj_platform_1) {
			action_1_pressed = true
			action_1_hold = true
		}	
		if position_meeting(x - 60, y - 60,obj_building2) or position_meeting(x + 60, y - 60,obj_building2) {
			action_1_pressed = true
			action_1_hold = true
		}
		if position_meeting(x - 32, y ,obj_stick) or position_meeting(x + 32, y,obj_stick) {
			action_1_pressed = true
			action_1_hold = true
		}
	}

	if (hp <= 0) {
		death = true
	}
	if (death == true) {
		instance_destroy()
	}

//MoveCollide()




}


