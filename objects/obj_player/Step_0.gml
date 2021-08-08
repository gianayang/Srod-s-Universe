if (global.hp > 0  and hit == false) {
	if not keyboard_check_pressed(vk_space) {
		if (keyboard_check_pressed(vk_left) or 
		keyboard_check_pressed(vk_right) or 
		keyboard_check_pressed(vk_up) or keyboard_check_pressed(vk_down)) {
			global.start_move = true
			global.show_ult = false
		}else {
			global.show_ult = true
		}
		if keyboard_check_pressed(vk_left){
			L_pressed = true
			L_hold = true
		
		}
		if keyboard_check_released(vk_left){
			L_released = true
			L_hold = false
		}
		if keyboard_check_pressed(vk_right){
			R_pressed = true
			R_hold = true
		}
		if keyboard_check_released(vk_right){
			R_released = true
			R_hold = false
		}

		if keyboard_check_pressed(vk_up){
			action_1_pressed = true
			action_1_hold = true
		}
		if keyboard_check_released(vk_up){
			action_1_released = true
			action_1_hold = false
		}
		if (keyboard_check_pressed(vk_down)){
			action_2_hold = true
		}
		if keyboard_check_released(vk_down){
			action_2_hold = false
		}
	}

	if (keyboard_check_pressed(vk_space)) {
		space_hold = true
		space_pressed = true
	}
	if (keyboard_check_released(vk_space)) {
		space_hold = false
		space_released = true
	}
	// Inherit the parent event
	event_inherited();
/*
	if (place_meeting(x ,y - 32,obj_platform_1)) {
		room = Room1
		global.hp = 0
	}
*/
	buttons_false();
	if place_meeting(x + 32, y + 32,obj_platform_1){
		x -= 2
	}
	if  place_meeting(x - 32, y + 32,obj_platform_1){
		x += 2
	}
	if place_meeting(x + 32, y + 32,obj_platform2_lvl2){
		x -= 2
	}
	if  place_meeting(x - 32, y + 32,obj_platform2_lvl2){
		x += 2
	}
	if place_meeting(x + 25, y + 32,obj_stick){
		x -= 0.5
	}
	if  place_meeting(x - 25, y + 32,obj_stick){
		x += 0.5
	}
	if  place_meeting(x + 16, y - 36,obj_black_hole){
		sprite_index = pointer_null
	}
	
	
	if (ult_pt >= 100) {
		ult = true
		if (sleep){
			time--
		}else{
			time =  18 * room_speed
			sleep = true
		}

		if (time == 0){
			sleep = false
			ult = false
			ult_pt -= 100
		}
	}
}else if global.hp <= 0{
	vspd = 2
	y -= vspd
	sprite_index = spr_player_death
}else if hit == true {
	sprite_index = spr_player_throw_up
	if (sleep){
		time--
	}else{
		time = 0.5 * room_speed
		sleep = true
		hit = false
	}

	if (time == 0){
		sleep = false
	}
}

