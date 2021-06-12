/// @description Insert description here
// You can write your code in this editor

// set the recalling drawing to disappear if it goes past the point it's returning to
if recalling{
	if (x < loc_to_move_x + 5 &&  x > loc_to_move_x - 5 &&
		y < loc_to_move_y + 5 && y > loc_to_move_y - 5){
	recalling = false
	}
}

//if the weapon is stolen, follow the enemy that has it
if stolen != noone {
	move_towards_point(  stolen.x, stolen.y,6 );
}


//If the weapon get's to far away, break the connection
player_pos_x = obj_Player.x
player_pos_y = obj_Player.y

dist = point_distance(x, y, player_pos_x, player_pos_y);

//check is the distance between the payer and the weapon is beyond it's max
if dist > max_dist && !global.broken{
	global.broken = true;
	with (obj_GameManager){
		alarm_set(0, 60*5);
	}
}