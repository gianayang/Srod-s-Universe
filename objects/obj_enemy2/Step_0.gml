event_inherited();

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
	var random_x = irandom_range(-80,80)
	var random_y = irandom_range(-80,80)
	instance_create_layer(x + random_x -32 , y + random_y - 32, "Effects", obj_egg)
}

if (time_1 == 0){
	sleep_1 = false
}


if (sleep_2){
	time_2--
}else{
	time_2 = 10 * room_speed
	sleep_2 = true
	action_1_pressed = true
	action_1_hold = true
}

if (time_2 == 0){
	sleep_2 = false
}

if (hp <= 0) {
	death = true
}
if (death == true) {
	instance_destroy()
}