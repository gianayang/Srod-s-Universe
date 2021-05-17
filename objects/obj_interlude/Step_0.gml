if (keyboard_check_pressed(vk_enter)){ 
	count +=1;
}

if (count <= 1){
	image_index = 0
}else if (count <= 4){
	image_index = 1
}else if(count < 5){
	image_index = 2
}else if (count < 7){ 
	image_index = 3
}else if (count == 7){
	image_index = 4
}else if (count == 8){
	image_index = 5
}else if (count == 9){
	image_index = 6
}else if (count == 10){
	image_index = 7
}else if (count == 11){
	image_index = 8 
} else if (count == 12){
	image_index = 9
}else if (count > 12) {
	room_goto(Room2)
}
