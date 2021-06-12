/// @description Insert description here
// You can write your code in this editor

//create a path towards the player
if (collision_circle(x, y, 10, obj_Player, true, true) == noone && !bump_back){
	mp_grid_path(global.grid, path, x, y, obj_Player.x, obj_Player.y, true);

	path_start(path,1.5, path_action_stop, false);
} else if !bump_back{
	path_end()
	bumpdir = point_direction(x,y, obj_Player.x, obj_Player.y);
	alarm_set(0,20);
	bump_back = true;
	motion_add(-bumpdir, 2);
	
}

//changing facing direction to match where they are moving
facing = round(direction / 45) * 45;
image_angle = facing;

// Projectile attack if in range
if (point_distance(x,y, obj_Player.x, obj_Player.y) < 200) && !proj_on_cooldown{
	alarm_set(1, 60*3)
	proj_on_cooldown = true
	instance_create_layer(x, y, "Instances", obj_shield_Projectile);
}