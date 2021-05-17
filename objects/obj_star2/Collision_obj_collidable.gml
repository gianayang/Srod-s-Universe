move_bounce_all(false);

//Slow the speed over time
if (speed > 1) {
	speed -= .5;
}

if (speed < 0.5){
	instance_destroy()
}