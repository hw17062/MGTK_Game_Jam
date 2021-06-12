/// @description Insert description here
// You can write your code in this editor
switch(room){
	case rm_main_menu:
		room_goto(rm_init)
	
		break;
	case rm_GameOver:
		room_goto(rm_main_menu)
	
		break;
}