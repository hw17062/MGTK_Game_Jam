/// @description Insert description here
// You can write your code in this editor

// functrion to call when looking for a wall to hide behind
if tracking{
	function find_wall_to_hide(){
		// Find a list of nearby walls to hide behind
		walls = ds_list_create();
		collision_circle_list(x, y, 500, obj_Wall_Parent, true, true, walls, true);
	
		var i = 0;
		var wall_found = false;
		var wallToHide = noone;
		// loop through all the walls sound to find the ones w/o the 'edge' flag indicating they can be hiden behind
		while (i < ds_list_size(walls) && !wall_found){
			wall = walls[| i];
		
			// found a nearby wall it can hide behind
			if wall.edge == false{
				wall_found = true;
			
				//get the dir between the wall and the player
				dir_wall_player= point_direction(obj_Player.x, obj_Player.y, wall.x, wall.y);
			
			
				var point_found = false;
				var j = 0;
				var point_to_check_x = 0
				var point_to_check_y = 0
			
				//use this dir to find the opposite point of the wall
				while !(point_found) || j < 20{
					point_to_check_x = wall.x + lengthdir_x(5 * j, dir_wall_player);
					point_to_check_y = wall.y + lengthdir_y(5 * j, dir_wall_player);
				
					if collision_point(point_to_check_x, point_to_check_y, all, true, false) == noone {
						point_found = true
					}
					j++
				}
			
				if !point_found {
					wall_found = false;
				} else {
					mp_grid_path(global.grid, path, x, y, point_to_check_x, point_to_check_y, true);

					path_start(path,mv_speed, path_action_stop, true);
				}
			}
		
			i++;
		}
	}

	// Path finding vars

	// Firstly, code for when the ball is out but the goblin has not stolen ity
	if instance_exists(obj_Ball) {
		if obj_Ball.speed == 0 && !holding_ball{
	
			mp_grid_path(global.grid, path, x, y, obj_Ball.x, obj_Ball.y, true);
			path_start(path, mv_speed , path_action_stop, true);
		} 
		else if obj_Ball.speed > 0 || holding_ball {
			find_wall_to_hide()
		}
	} 
	else if !instance_exists(obj_Ball){
		find_wall_to_hide()
	}
}else{
	path_end()
}

if speed == 0
{
	sprite_index = spr_goblin_idle
	if direction < 90 and direction > -90
	{
		image_xscale = -1
	}
	else
	{
		image_xscale = 1
	}
}
else if attacking == 0
{
	if direction < 45 and direction > -45
	{
		sprite_index = spr_goblin_left
		image_xscale = -1
	}
	else if direction < 135 and direction > 45
	{
		sprite_index = spr_goblin_up
		image_xscale = 1
	}
	else if direction < -45 and direction > -135
	{
		sprite_index = spr_goblin_down
		image_xscale = 1
	}
	else
	{
		sprite_index = spr_goblin_left
		image_xscale = 1
	}
}