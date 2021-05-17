if (sleep){
	time--
}else{
	time = 10 * room_speed
	sleep = true
}

if (time == 0){
	sleep = false
	instance_destroy()
}