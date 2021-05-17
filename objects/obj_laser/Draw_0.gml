//draw_line(x, y, xEnd, yEnd)
for (j = 0; j < length_laser; j++) {
	if dir == 1 {
		draw_sprite_ext(spr_laser, idx, obj_player.x + lengthdir_x(j, direction) * dir + 25, obj_player.y + lengthdir_y(j, direction) * dir - 30, 1, 1, 0,-1,1)
	}else {
		draw_sprite_ext(spr_laser, idx, obj_player.x + lengthdir_x(j, direction) * dir - 28, obj_player.y + lengthdir_y(j, direction) * dir - 30, 1, 1, 0,-1,1)
	}
}