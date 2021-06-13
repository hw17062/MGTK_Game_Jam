/// @description Insert description here
// You can write your code in this editor

switch(room){
	case rm_init:
	
		break;
	
	case rm_main_menu:

		break;
}

if paused
{
	var vratio = 480/room_width
	
	var _cx = camera_get_view_x(view_camera[0])
	var _cy = camera_get_view_y(view_camera[0])
	
	
	draw_sprite_ext(paused_sprite, -1, _cx, _cy, vratio,vratio, 0, c_white, 1);
	draw_set_alpha(0.5);
    draw_rectangle_colour(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, false);
    draw_set_alpha(1);
    if chain_break == 0
	{
		draw_text_transformed_colour(_cx + 5, _cy , "PAUSED", 2, 2, 0, c_aqua, c_aqua, c_aqua, c_aqua, 1);
	}
	else if chain_break == 1
	{
		instance_create_layer(_cx + 240, _cy + 135, "Instances_1", obj_chain_break)
		audio_pause_all()
		audio_play_sound(wav_chain_break, 30, false)
		chain_break = 2
	}
} else{
}

/*
draw_set_alpha(0.2)
mp_grid_draw(global.grid)
draw_set_alpha(1)
*/