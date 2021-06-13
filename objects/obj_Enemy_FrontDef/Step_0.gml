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
image_angle = facing * 45;

// Projectile attack if in range
if (point_distance(x,y, obj_Player.x, obj_Player.y) < 200) && !proj_on_cooldown{
	alarm_set(1, 60*3)
	proj_on_cooldown = true
	instance_create_layer(x, y, "Instances", obj_shield_Projectile);
}