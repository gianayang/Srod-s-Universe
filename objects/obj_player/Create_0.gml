/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();


hspd_max = 8
accel = 2

jump_hold = .25 * room_speed
num_jump = 1
jump_pressed_timer = 30


coyote_time = 5
time = 3 * room_speed
sleep = false

ult = false
if (room == Room1) {
	sprite_jump = spr_jump
	sprite_run = spr_player_run
	sprite_slide = spr_player_slide
	sprite_idle = spr_player
	sprite_ult = spr_player_ult
	sprite_wall_walk = spr_player_wall_walk
	sprite_fall = spr_player_fall
	sprite_hit = spr_player_throw_up
}else if (room == Room2) {
	grav_amt = 0.2
	sprite_jump = spr_jump2
	sprite_run = spr_player_run2
	sprite_slide = spr_player_slide2
	sprite_idle = spr_player2
	sprite_ult = spr_player_ult2
	sprite_fall = spr_player_fall2
	sprite_hit = spr_player_throw_up
}


#region health 
death = global.death
hp_max = 100
ult_pt = 0
time = 10 * room_speed
sleep = false

draw_flag = false
healthbar_width = 100
healthbar_height = 12
healthbar_x = camera_get_view_x(obj_camera.cam) + 20
healthbar_y = camera_get_view_y(obj_camera.cam) + 40
#endregion