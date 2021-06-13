/// @description Insert description here
// You can write your code in this editor

//create a path towards the player
if tracking {
	mp_grid_path(global.grid, path, x, y, obj_Player.x, obj_Player.y, true);

	path_start(path,1.5, path_action_stop, false);
}else {
	path_end()
}


//changing facing direction to match where they are moving
//Facing is only in 8 directions, so if the object turns more than 60 deg, then the angle they are looking at will change
if (direction > (facing *45) +50) or (direction < (facing *45) -50){
	facing = direction div 45;
}
if attacking == 0
{
	if facing == 0
	{
		sprite_index = spr_hunter_walk_3
		image_xscale = 1
	}
	else if facing == 1
	{
		sprite_index = spr_hunter_walk_4
		image_xscale = 1
	}
	else if facing == 2
	{
		sprite_index = spr_hunter_walk_5
		image_xscale = 1
	}
	else if facing == 3
	{
		sprite_index = spr_hunter_walk_4
		image_xscale = -1
	}
	else if facing == 4
	{
		sprite_index = spr_hunter_walk_3
		image_xscale = -1
	}
	else if facing == 5
	{
		sprite_index = spr_hunter_walk_2
		image_xscale = -1
	}
	else if facing == 6
	{
		sprite_index = spr_hunter_walk_1
		image_xscale = 1
	}
	else if facing == 7
	{
		sprite_index = spr_hunter_walk_2
		image_xscale = 1
	}
}

// Projectile attack if in range
if (point_distance(x,y, obj_Player.x, obj_Player.y) < 200) && !proj_on_cooldown{
	attacking = 1
	if facing == 0
	{
		sprite_index = spr_hunter_attack_3
		image_xscale = 1
	}
	else if facing == 1
	{
		sprite_index = spr_hunter_attack_4
		image_xscale = 1
	}
	else if facing == 2
	{
		sprite_index = spr_hunter_attack_5
		image_xscale = 1
	}
	else if facing == 3
	{
		sprite_index = spr_hunter_attack_4
		image_xscale = -1
	}
	else if facing == 4
	{
		sprite_index = spr_hunter_attack_3
		image_xscale = -1
	}
	else if facing == 5
	{
		sprite_index = spr_hunter_attack_2
		image_xscale = -1
	}
	else if facing == 6
	{
		sprite_index = spr_hunter_attack_1
		image_xscale = 1
	}
	else if facing == 7
	{
		sprite_index = spr_hunter_attack_2
		image_xscale = 1
	}
	alarm_set(1, 60*3)
	proj_on_cooldown = true
	instance_create_layer(x, y, "Instances", obj_shield_Projectile);
	tracking = false
	alarm_set(0, 30);
}