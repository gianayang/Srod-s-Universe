if (obj_actor.space_hold == false or global.show_ult == false) {
	instance_destroy()
}

direction = 0

var max_length = 1280
for (i = 0; i < max_length; i++) {
	xEnd = x + lengthdir_x(i, direction) * obj_player.image_xscale
	yEnd = y + lengthdir_y(i, direction) * obj_player.image_xscale
	
	length_laser = i
	if (collision_point(xEnd, yEnd, obj_collidable, 0, 0) || collision_point(xEnd, yEnd, obj_enemyParent, 0, 0) || collision_point(xEnd, yEnd, obj_enemy2, 0, 0)) {
		part_particles_create(obj_particle.particleSystem, xEnd, yEnd, obj_particle.particleType_Hit, 1)	
		part_particles_create(obj_particle.particleSystem, xEnd, yEnd, obj_particle.particleType_Spark, 10)	
	break
	}
}

if (instance_exists(obj_enemyParent)) {
	var _list = ds_list_create()
	var hits = collision_line_list(x, y, xEnd, yEnd, obj_enemyParent, 0, 0, _list, 0)
	
	if (hits > 0) {
		for (var k = 0; k < hits; ++k) {
			_list[| k].death = true
		}
	}
	ds_list_destroy(_list)
}

if (instance_exists(obj_enemy2)) {
	var _list = ds_list_create()
	var hits = collision_line_list(x, y, xEnd, yEnd, obj_enemy2, 0, 0, _list, 0)
	
	if (hits > 0) {
		for (var k = 0; k < hits; ++k) {
			_list[| k].death = true
		}
	}
	ds_list_destroy(_list)
}
