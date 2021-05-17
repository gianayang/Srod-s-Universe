L_pressed = false
L_released = false
L_hold = false

R_pressed = false
R_released = false
R_hold = false

#region 8-direction bullet
bullet = obj_bullet
just_shoot = false
shoot_pressed_timer = 8
bullet_speed = 10
ult = false
moving = false

space_pressed = false
space_released = false
space_hold = false

#endregion

action_1_pressed = false
action_1_released = false
action_1_hold = false


x_blocked = false
canChangeSprite = true
action_2_hold = false
just_slide = false

mtLocked = 0


hspd_max = 5
accel = 2.5
jump_max= 7
grav_amt= 0.5
jump_hold = .25 * room_speed
num_jump = 1
jump_pressed_timer = 60
coyote_time = 30



hspd = 0
vspd = 0
grounded=false
just_jumped = false
jumps_spent = 0
jump_pressed = false
x_remainder = 0
y_remainder = 0


sprite_jump = pointer_null
sprite_run = pointer_null
sprite_slide = pointer_null
sprite_idle = pointer_null
sprite_ult = pointer_null
sprite_wall_walk = pointer_null
sprite_fall = pointer_null


death = false