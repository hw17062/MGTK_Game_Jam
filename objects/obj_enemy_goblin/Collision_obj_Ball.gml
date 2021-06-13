/// @description Insert description here
// You can write your code in this editor

if other.speed > 0 && !holding_ball{
	instance_destroy(self);
}else {
	holding_ball = true;
	other.stolen = self
	mv_speed = 2;
	if sound == 0
	{
		if x <= other.x
		{
			image_xscale = 1
		}
		else
		{
			image_xscale = -1
		}
		sprite_index = spr_goblin_attack
		audio_play_sound(wav_steal, 3, false)
		sound = 1
		attacking = 1
	}
}
