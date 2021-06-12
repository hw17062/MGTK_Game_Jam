/// @description Insert description here
// You can write your code in this editor
switch(room){
	case rm_main_menu:
	audio_stop_all()
	draw_set_alpha(1)
	room_goto_next()

		break;
	case rm_GameOver:
		room_goto(rm_main_menu)

		break;
}
