/// @description Insert description here
// You can write your code in this editor

if tracking {
mp_grid_path(global.grid, path, x, y, obj_Player.x, obj_Player.y, true);
path_start(path, 1.5, path_action_stop, true);
}else
{
	path_end()
}
if speed == 0
{
	sprite_index = spr_bumper_idle
	if direction < 90 and direction > -90
	{
		image_xscale = 1
	}
	else
	{
		image_xscale = -1
	}
}
else if attacking == 0
{
	if direction < 45 and direction > -45
	{
		sprite_index = spr_bumper_walk_right
		image_xscale = 1
	}
	else if direction < 135 and direction > 45
	{
		sprite_index = spr_bumper_walk_up
		image_xscale = 1
	}
	else if direction < -45 and direction > -135
	{
		sprite_index = spr_bumper_walk_down
		image_xscale = 1
	}
	else
	{
		sprite_index = spr_bumper_walk_right
		image_xscale = -1
	}
}