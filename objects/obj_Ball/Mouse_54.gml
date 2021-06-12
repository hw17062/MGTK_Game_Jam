/// @description Insert description here
// You can write your code in this editor

if !global.broken{
	recalling = true;
	loc_to_move_x = obj_Player.x;
	loc_to_move_y= obj_Player.y;

	move_towards_point( loc_to_move_x, loc_to_move_y, 5 )
}

/*
mp_linear_path_object(recall_path, loc_to_move_x, loc_to_move_y, 6, noone);

path_start(recall_path, 6, path_action_stop, 0);
*/
