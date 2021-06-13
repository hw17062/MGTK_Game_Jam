/// @description Insert description here
// You can write your code in this editor
bumpdir = point_direction(other.x, other.y, x, y)
bumpspd = 5

audio_play_sound(wav_spring, 2, false)

with (other){
	bumpdir = point_direction( obj_Player.x,  obj_Player.y,x, y)
	motion_add(bumpdir, 1);
	tracking = false;
	alarm_set(0,30);
	attacking = 1
		if direction < 45 and direction > -45
	{
		sprite_index = spr_bumper_attack_right
		image_xscale = 1
	}
	else if direction < 135 and direction > 45
	{
		sprite_index = spr_bumper_attack_up
		image_xscale = 1
	}
	else if direction < -45 and direction > -135
	{
		sprite_index = spr_bumper_attack_down
		image_xscale = 1
	}
	else
	{
		sprite_index = spr_bumper_attack_right
		image_xscale = -1
	}
}