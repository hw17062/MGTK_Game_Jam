/// @description Insert description here
// You can write your code in this editor
with (obj_GameManager){
	paused = false
	instance_activate_all();
	sprite_delete(paused_sprite);
	chain_break = 0
	alarm_set(0, 60*5);
	audio_pause_sound(wav_gameplay_loop)
	audio_play_sound(wav_danger, 3, false)
	}
instance_destroy()