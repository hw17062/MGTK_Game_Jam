/// @description Insert description here
// You can write your code in this editor

switch(room){
	case rm_init:
	
		break;
	
	case rm_main_menu:

		break;
	
	case rm_intro:
		
		draw_set_halign(fa_center)
		if line == 1
		{
			draw_text_transformed_colour(room_width/2, room_height/3,
			@"So, there's good news and bad news . . .",
			1, 1, 0, c_white, c_white, c_white, c_white, 1)

		}
		else if line == 2
		{
			draw_text_transformed_colour(room_width/2, room_height/3,
			@"The bad news is:
			
			you've been selected for the Multi-Generational Bloodsport,
			commonly referred to as the
			
			Death Arena of Eternal Doom.",
			1, 1, 0, c_white, c_white, c_white, c_white, 1)
		}
		else if line == 3
		{
			draw_text_transformed_colour(room_width/2, room_height/3,
			@"The bad news is:
			
			you've been selected for the Multi-Generational Bloodsport,
			commonly referred to as the
			
			Death Arena of Eternal Doom.
			
			Our Emperor really wanted the acronym to spell 'DEAD', and by jove, he tried.",
			1, 1, 0, c_white, c_white, c_white, c_white, 1)
		}
		else if line == 4
		{
			draw_text_transformed_colour(room_width/2, room_height/3,
			@"The good news is:
			
			you have a secret weapon. 
			
			Your family possesses the Pillar of Eternity,
			an heirloom, passed down for generations.",
			1, 1, 0, c_white, c_white, c_white, c_white, 1)
		}
		else if line == 5
		{
			draw_text_transformed_colour(room_width/2, room_height/3,
			@"As long as your Chain of Binding connects you to the Pillar,
			you won't die.",
			1, 1, 0, c_white, c_white, c_white, c_white, 1)
		}
		else if line == 6
		{
			draw_text_transformed_colour(room_width/2, room_height/3,
			@"As long as your Chain of Binding connects you to the Pillar,
			you won't die.
			
			If your Chain fails, you'll die, within a matter of seconds,
			so you'll have to reconnect to the Pillar.",
			1, 1, 0, c_white, c_white, c_white, c_white, 1)
		}
		else if line == 7
		{
			draw_text_transformed_colour(room_width/2, room_height/3,
			@"As long as your Chain of Binding connects you to the Pillar,
			you won't die.
			
			Maybe you'll actually stand a chance...",
			1, 1, 0, c_white, c_white, c_white, c_white, 1)
		}
		else if line == 8
		{
			draw_text_transformed_colour(room_width/2, room_height/3,
			@"Move using the WASD or the Arrow keys
			
			or both, if you're feeling wild.",
			1, 1, 0, c_white, c_white, c_white, c_white, 1)
		}
		else if line == 9
		{
			draw_text_transformed_colour(room_width/2, room_height/3,
			@"Move using the WASD or the Arrow keys
			
			or both, if you're feeling wild.
			
			The left mouse button will hurl the Pillar towards your cursor.",
			1, 1, 0, c_white, c_white, c_white, c_white, 1)
		}
		else if line == 10
		{
			draw_text_transformed_colour(room_width/2, room_height/3,
			@"Move using the WASD or the Arrow keys
			
			or both, if you're feeling wild.
			
			The left mouse button will hurl the Pillar towards your cursor.
			
			The right mouse button will recall the Pillar to your current position.",
			1, 1, 0, c_white, c_white, c_white, c_white, 1)
		}
		else if line == 11
		{
			draw_text_transformed_colour(room_width/2, room_height/3,
			@"Move using the WASD or the Arrow keys
			
			or both, if you're feeling wild.
			
			The left mouse button will hurl the Pillar towards your cursor.
			
			The right mouse button will recall the Pillar to your current position.
			
			Beware, the recall has a cooldown time!",
			1, 1, 0, c_white, c_white, c_white, c_white, 1)
		}
		else if line == 12
		{
			draw_text_transformed_colour(room_width/2, room_height/3,
			@"Build combos, earn titles, achieve glory for the Empire!!!",
			1, 1, 0, c_white, c_white, c_white, c_white, 1)
		}
		draw_set_halign(fa_left)
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