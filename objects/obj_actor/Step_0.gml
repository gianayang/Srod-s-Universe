if death == false{
	#region base movement and animation related to keypress
	var onTheWall = place_meeting(x - 32, y, obj_building) - place_meeting(x + 32, y, obj_building)
	if (object_index == obj_enemyParent) {
		onTheWall = 0
	}
	mtLocked = max(mtLocked - 1, 0)
	if (onTheWall != 0 && room == Room1) {
		vspd = min(vspd + 1, 2.2)
	}else {
		vspd += grav_amt                                        //apply gravity
	}

	if (L_hold){							// if pressing A..
	    if (hspd > -hspd_max){
			hspd -= accel	                                //accelerate if not at max speed left
		} else { 
			hspd = -hspd_max 
		}
		if (onTheWall == 0) {
			image_xscale = -1
		}
	}else if (R_hold){                     //otherwise if D same deal in other direction...
	    if (hspd < hspd_max){
			hspd += accel	
		} else {
			hspd = hspd_max
		}
	    if (onTheWall == 0) {
			image_xscale = 1
		}								//flip the sprite to face right
	}else{		
		//if not pressing either direction..
	    if grounded {
			hspd = 0
			//lerp(hspd, 0, .05)//..and on the ground.. slow me
	    }
	}



	#endregion
	
	if mtLocked <= 0 {
		#region jumping and falling
		if (action_2_hold == false) {
			if (action_1_pressed){
				jump_pressed = true
				alarm[1] = jump_pressed_timer
			}
			if grounded {							// if player is touching the ground or platform
				vspd = 0							// set our jump value to 0 so we don't move
	
			}else{									// if player is NOT on the ground..
				if just_jumped{
					if (action_1_hold){	// ..allow player to hold the jump button for increased height
						jump_pressed = false
						if onTheWall != 0 && !grounded && room == Room1{
							hspd = onTheWall * hspd
							mtLocked = 10
							vspd = -10
						}
						vspd = -jump_max					// set our jump value to its max to start the jump						      
					} else {
						just_jumped = false
						alarm[0] = 0
					}
				}
	

			}

			if jump_pressed and jumps_spent < num_jump {			//check for jump key only if we have jumps left to use
				jump_pressed = false				// turn off our jump key, because we used it
				if onTheWall != 0 && !grounded && room == Room1{
					vspd = min(vspd + 1, 0.5)
					hspd = onTheWall * hspd
					mtLocked = 10
					vspd = -10
				}else {
					vspd = -jump_max					// set our jump value to its max to start the jump						      
					if grounded == false{				// if not on the ground..
						jumps_spent += 1				// .. use an air jump
					}
				}
				if jump_hold > 0{
					just_jumped = true
					alarm[0] = jump_hold
				}
		
				grounded = false						// we're not on the ground anymore! we jumped!
			}
		}

		#endregion
	}


	#region movement and collisions

	MoveCollide() // < - wow, big script!

	//are we on the ground?
	if(place_meeting(x, y + 1, obj_collidable)){
		alarm[2] = coyote_time				// while on a platform, hold this timer at maximum
		grounded = true
		jumps_spent = 0
	}
	#endregion
	if (abs(hspd) > 1.5 or abs(vspd) > 1.5) {
		moving = true
	}else {
		moving = false
	}
	#region shooting bullet
	if (space_pressed == true) {
		if (ult == false) {
			blt = instance_create_layer(x, y - 32, "Effects",bullet)
			if (room == Room1) {
				blt.xspeed = bullet_speed * image_xscale;
			} else if (room == Room2) {
				blt.yspeed = -bullet_speed;
				blt.image_angle = 90
			}
			alarm[3] = 30
			alarm[4] = shoot_pressed_timer
		}
	}
	#endregion
	
	if (onTheWall == 0) {
		if (action_2_hold == true) {
			sprite_index = sprite_slide
			just_slide = true
		}else {
			if (vspd < 0) {
				sprite_index = sprite_jump
			}else if (vspd == 0){
				if (L_hold or R_hold) and grounded == true {
					sprite_index = sprite_run
				}else if (ult == true and space_hold == true and abs(hspd) < 1.5){
					sprite_index = sprite_ult
					if (image_index > 3) {
						image_speed = 0
						if !(instance_exists(obj_laser)) {
							blt = instance_create_layer(x + (22 * image_xscale), y - 40, "Effects",obj_laser)
							blt.image_xscale = image_xscale
						}
					}else {
						image_speed = 0.8
					}
					
				}else {
					sprite_index = sprite_idle
				}
			}else {
				sprite_index = sprite_fall
			}
		}
	}else {
		if (grounded == false && room == Room1) {
			sprite_index = sprite_wall_walk
			image_xscale = onTheWall
		}
	}
	if (sprite_index != sprite_slide and canChangeSprite == true) {
		just_slide = false
	}
	if (space_hold == false) {
		image_speed = 2
	}
}
