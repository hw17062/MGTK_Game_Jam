/// @description Insert description here
// You can write your code in this editor

if !global.recall_cooldown && !global.broken{
	global.recall_cooldown = true;
	alarm_set(1, 60 * 5)
	with (obj_Ball){
		recalling = true;
		loc_to_move_x = obj_Player.x;
		loc_to_move_y= obj_Player.y;

		move_towards_point( loc_to_move_x, loc_to_move_y, 5 )
	}
}