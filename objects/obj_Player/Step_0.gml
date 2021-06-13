/// @description Insert description here
// You can write your code in this editor

left	=  keyboard_check(vk_left)	|| keyboard_check(ord("A")) ? true : false
right	=  keyboard_check(vk_right)	|| keyboard_check(ord("D")) ? true : false
up		=  keyboard_check(vk_up)	|| keyboard_check(ord("W")) ? true : false
down	=  keyboard_check(vk_down)	|| keyboard_check(ord("S")) ? true : false

moveX = (right - left)	* walkSpeed;
moveY = (down - up)		* walkSpeed;

if bumpspd > 0{
	moveX += lengthdir_x(bumpspd, bumpdir);
	moveY += lengthdir_y(bumpspd, bumpdir);
	
	bumpspd = bumpspd - 0.1
}

if (moveX != 0){
	if (place_meeting(x+moveX + (5 * sign(moveX)),y, other)){
		repeat(abs(moveX)){
			if(!place_meeting(x+sign(moveX) + (5 * sign(moveX)), y, other)){x += sign(moveX);}
			else {break;}
		}
		moveX = 0
	}
}

if (moveY != 0){
	if (place_meeting(x,y+moveY + (5 * sign(moveY)), other)){
		repeat(abs(moveY)){
			if(!place_meeting(x, y+sign(moveY) + (5 * sign(moveYM)), other)){y += sign(moveY);}
			else {break;}
		}
		moveY = 0
	}
}

x += moveX
y += moveY

if mouse_check_button_pressed(mb_left) and !instance_exists(obj_Ball)
   {
	obj_GameManager.tit_throws++;
	spawn_dir = point_direction(x,y,mouse_x,mouse_y)

	spawn_x = x + lengthdir_x(50,spawn_dir)
	spawn_y = y + lengthdir_y(50,spawn_dir)
   instance_create_layer(spawn_x, spawn_y, "Instances", obj_Ball);
   audio_play_sound(wav_throw, 3, false)
   if instance_exists(obj_pick_up_anim){
	   instance_destroy(obj_pick_up_anim)
   }
   }

if moveX > 0
{
	sprite_index = spr_player_right
	image_xscale = 1
	last_vx = moveX
}
else
{
	if moveX < 0
	{
		sprite_index = spr_player_right
		image_xscale = -1
		last_vx = moveX
	}
	else
	{
		if moveY > 0
		{
			sprite_index = spr_player_down
			image_xscale = 1
		}
		else
		{
			if moveY < 0
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


//If overlapping with wall, stop moving
if (collision_circle(x, y, 15, obj_Wall_Parent, true, true) != noone){
	alarm_set(0,-1);
	motion_set(dir, 0);
}