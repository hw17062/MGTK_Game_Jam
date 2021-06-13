/// @description Insert description here
// You can write your code in this editor
switch(room){
	case rm_main_menu:
	if time == 1
	{
		audio_stop_all()
		draw_set_alpha(1)
		room_goto_next()
	}

		break;
	case rm_GameOver:
		audio_stop_all()
		room_goto(rm_arena)

		break;
		
	case rm_intro:
		
		if next == 0
		{
			room_goto_next()
		}
		else if line < 12
		{line += 1}
		
		if line == 3
		{
			instance_create_layer(room_width/2, 50 + 2*room_height/3, "Instances", obj_emperor)
		}
		
		if line == 12 and no_replay == 0
		{
			alarm_set(2, 150)
			alarm_set(5, 50)
			audio_play_sound(wav_enter_the_arena, 10, false)
			no_replay = 1
		}
	
		break;
}
