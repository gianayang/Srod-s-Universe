if (keyboard_check_pressed(vk_enter)){ 
	count +=1;
}

if (count <= 1){
	image_index = 0
}else if (count <= 4 and count >= 2){ 
	image_index = 1
}else if (count == 5){
	image_index = 2
}else {
	room_goto(Room1)
}
