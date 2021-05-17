repeat(irandom_range(5,20)) {
	var random_x = irandom_range(-32,32)
	var random_y = irandom_range(-32,32)
	var star = instance_create_layer(x + random_x -32 , y + random_y - 32, "Effects", obj_star2)
	star.image_speed = .10
}