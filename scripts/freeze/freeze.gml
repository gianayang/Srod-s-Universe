// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function freeze(argument0){
	freezedur = argument0
	t = current_time + freezedur
	
	while (current_time < t) { }
}