image_angle = random(360)
fade_speed = 0.1

repeat(16) {
	instance_create_layer(x + random_range(-8,8), y + random_range(-8,8),"Effects",obj_explosion_chunk)
}