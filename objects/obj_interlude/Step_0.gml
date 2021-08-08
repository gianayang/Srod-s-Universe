if (keyboard_check_pressed(vk_enter)){ 
	count +=1;
}

if (count == 0){
	image_index = 0
}else if (count == 1){
	image_index = 1
}else if(count == 2){
	image_index = 2
}else if (count < 4){ 
	image_index = 3
}else if (count <= 6){
	image_index = 4
}else if (count == 7){
	image_index = 5
}else if (count <= 9){
	image_index = 6
}else if (count <= 12){
	image_index = 7
}else if (count == 13){
	image_index = 8 
}else if (count <= 16){
	image_index = 9
}else if (count == 17){
	image_index = 10
}else if (count == 18){
	image_index = 11
}else if (count == 19){
	image_index = 12
}else if (count == 20){
	image_index = 13
}else if (count == 21){
	image_index = 14
}else if (count == 22){
	image_index = 15
}else if (count >= 23) {
	room_goto(Room2)
	global.hp = 100
}
