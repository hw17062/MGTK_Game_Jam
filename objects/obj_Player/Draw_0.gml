/// @description Insert description here
// You can write your code in this editor
draw_self()
if global.recall_cooldown{
	time_left = (alarm_get(1) / (60 * 5)) * 100
	
	var px = obj_Player.x
	var py = obj_Player.y
	draw_healthbar(px-20, py+10, px+20, py+15, time_left, c_black, c_blue, c_blue, 1, true, true);
}