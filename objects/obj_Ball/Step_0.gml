/// @description Insert description here
// You can write your code in this editor

// set the recalling drawing to disappear if it goes past the point it's returning to
if recalling{
	if (x < loc_to_move_x + 5 &&  x > loc_to_move_x - 5 &&
		y < loc_to_move_y + 5 && y > loc_to_move_y - 5){
	recalling = false
	}
}


//If the weapon get's to far away, break the connection
player_pos_x = obj_Player.x
player_pos_y = obj_Player.y

dist = point_distance(x, y, player_pos_x, player_pos_y);

if dist > max_dist{
	global.broken = true;
}