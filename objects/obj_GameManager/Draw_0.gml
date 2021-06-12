/// @description Insert description here
// You can write your code in this editor

switch(room){
	case rm_init:
	
		break;
	
	case rm_main_menu:
		draw_set_halign(fa_center)
		draw_text(room_width/2, 2*room_height/3,
		"Press Enter to start!!!");
		draw_set_halign(fa_left)
		break;
}

if paused
{
	var _cx = camera_get_view_x(view_camera[0])
	var _cy = camera_get_view_y(view_camera[0])
	
	var vratio = 480/1366
	draw_sprite_ext(paused_sprite, -1, _cx, _cy, vratio,vratio, 0, c_white, 1);
	draw_set_alpha(0.5);
    draw_rectangle_colour(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, false);
    draw_set_alpha(1);
    draw_text_transformed_colour(_cx + 5, _cy , "PAUSED", 2, 2, 0, c_aqua, c_aqua, c_aqua, c_aqua, 1);
} else{
}

/*
draw_set_alpha(0.2)
mp_grid_draw(global.grid)
draw_set_alpha(1)
*/