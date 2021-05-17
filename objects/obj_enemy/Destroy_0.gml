/// @description Insert description here
// You can write your code in this editor
repeat(irandom_range(100,300)) {
	var random_x = irandom_range(-1200,1200)
	var random_y = irandom_range(-1200,1200)
	var star = instance_create_layer(x + random_x -32 , y + random_y - 32, "Effects", obj_star_dust)
	star.image_speed = .10
}

if (instance_exists(obj_spawner)) {
	with(obj_spawner) {
		if (triggered) {
			remaining[current_wave]--
		}
	}
}
instance_create_layer(x, y, "Effects", obj_explosion_flash)

instance_create_layer(x, y - 64,"Effects",obj_pill)