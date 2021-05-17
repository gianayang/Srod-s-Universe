draw_set_font(Font1);

draw_set_color(c_white);

draw_set_halign(fa_left);
draw_set_valign(fa_center);

txt = ds_map_find_value(textMap,value);

draw_text_speed(x,y,string(txt),.01*room_speed);