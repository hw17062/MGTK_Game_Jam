/// @description Insert description here
// You can write your code in this editor

//create a path towards the player
mp_grid_path(global.grid, path, x, y, obj_Player.x, obj_Player.y, true);

path_start(path,1.5, path_action_stop, false);

//changing facing direction to match where they are moving
facing = round(direction / 45) * 45;
image_angle = facing;

// Projectile attack if in range
//if point_distance(x,y, obj_Player, obj_Player) < 50 && alarm_get(1) == 0{
//	alarm_set(1, 60 * 3);
//	instance_create_layer(x, y, "Instances", obj_shield_Projectile);
//}