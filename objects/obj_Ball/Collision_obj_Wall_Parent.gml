/// @description Insert description here
// You can write your code in this editor

if other.bouncy{
	move_bounce_all(true);
	audio_play_sound(wav_impact_slime, 1, false)
	bouncing = true
	init_throw = false
} else {
	speed = 0
	audio_play_sound(wav_impact_stone, 1, false)
}
