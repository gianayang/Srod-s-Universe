///@desc health bar
draw_sprite(spr_healthbar_bg, 0, healthbar_x,healthbar_y)
draw_sprite_stretched(spr_healthbar, 0, healthbar_x, healthbar_y - 8, (global.hp / hp_max)* (healthbar_width - 10), healthbar_height + 10)
draw_sprite(spr_health_bar, 0, healthbar_x,healthbar_y)


if (ult_pt < 100) {
	draw_sprite(spr_healthbar_bg, 0, healthbar_x,healthbar_y + 32)
	draw_sprite_stretched(spr_ult_bar, 0, healthbar_x, healthbar_y + 24, (ult_pt / 100)* (healthbar_width - 10), healthbar_height + 10)
	draw_sprite(spr_health_bar, 0, healthbar_x,healthbar_y + 32)
}else {
	if (draw_flag) {
		draw_sprite(spr_ult_ready, 0, healthbar_x,healthbar_y + 32)
		draw_flag = false
	}else {
		draw_flag = true
		draw_sprite(spr_ult_ready, 1, healthbar_x,healthbar_y + 32)
	}
}
	
