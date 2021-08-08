gpu_set_blendmode(bm_add)
if (room == Room1){
	draw_sprite(spr_explosion_flash,0,x,y)
}else if (room == Room2){
	draw_sprite(spr_blood_explosion,0,x,y)
}
gpu_set_blendmode(bm_normal)