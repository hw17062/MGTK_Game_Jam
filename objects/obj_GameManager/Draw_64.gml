/// @description Insert description here
// You can write your code in this editor

if global.broken{
	time_left = (alarm_get(0) / (60 * 5)) * 100
	draw_healthbar(room_width - 30, room_height /3, room_width - 20, room_height *2 / 3, time_left, c_black, c_yellow, c_red, 3, true, true);
}