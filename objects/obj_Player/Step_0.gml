/// @description Insert description here
// You can write your code in this editor
vx = (right - left) * walkSpeed
vy = (down - up) * walkSpeed

if vx != 0 and vy != 0
{
	vx = vx/sqrt(2)
	vy = vy/sqrt(2)
}

x += vx
y += vy

if mouse_check_button_pressed(mb_left) and !instance_exists(obj_Ball)
   {
	spawn_dir = point_direction(x,y,mouse_x,mouse_y)

	spawn_x = x + lengthdir_x(50,spawn_dir)
	spawn_y = y + lengthdir_y(50,spawn_dir)
   instance_create_layer(spawn_x, spawn_y, "Instances", obj_Ball);
   }

if vx > 0
{
	sprite_index = spr_player_right
	image_xscale = 1
	last_vx = vx
}
else
{
	if vx < 0
	{
		sprite_index = spr_player_right
		image_xscale = -1
		last_vx = vx
	}
	else
	{
		if vy > 0
		{
			sprite_index = spr_player_down
			image_xscale = 1
		}
		else
		{
			if vy < 0
			{
			sprite_index = spr_player_up
			image_xscale = 1
			}
			else
			{
				if last_vx >= 0
				{
					sprite_index = spr_player_idle
					image_xscale = 1
				}
				else
				{
					sprite_index = spr_player_idle
					image_xscale = -1
				}
			}
		}
	}
}