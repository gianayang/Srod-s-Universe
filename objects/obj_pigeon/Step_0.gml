event_inherited()

if (sleep){
	time--
}else{
	time = 1 * room_speed
	sleep = true
	if instance_exists(obj_player) {
		var dir = point_direction(x,y,obj_player.x, obj_player.y)
		if (dir < 360 and dir > 180) {
			instance_create_depth(x, y + 16, 1, obj_enemy_bullet3)
		}
	}
}

if (time == 0){
	sleep = false
}

if (sleep1){
	time1--
}else{
	time1 = 7 * room_speed
	sleep1 = true
	R_hold = not R_hold
	L_hold = not L_hold
}

if (time1 == 0){
	sleep1 = false
}
