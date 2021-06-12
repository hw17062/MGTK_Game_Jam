/// @description Insert description here
// You can write your code in this editor

if global.broken{
	global.broken = false;
	audio_stop_all()
	room_goto(rm_GameOver)
}
