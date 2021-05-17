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
	down = choose(true,false)
	if (down == true){
		vspd = choose(0,3.0)
	}else {
		vspd = choose(0,-3.0)
	}
}

if (time == 0){
	sleep = false
}

if (sleep_1){
	time_1--
}else{
	time_1 = 2* room_speed
	sleep_1 = true
	instance_create_layer(x + 24, y - 37, "Effects", bullet)
}

if (time_1 == 0){
	sleep_1 = false
}

if (hp <= 0) {
	death = true
}
if (death == true) {
	instance_destroy()
}




