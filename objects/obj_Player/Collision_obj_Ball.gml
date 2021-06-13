/// @description Insert description here
// You can write your code in this editor
instance_destroy(other);
instance_create_layer(x,y, "Instances", obj_pick_up_anim);
if global.broken == true
{
	audio_stop_sound(wav_danger)
	audio_resume_sound(wav_gameplay_loop)
}
global.broken = false;
holding = true