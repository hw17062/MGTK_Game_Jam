/// @description Insert description here
// You can write your code in this editor
bumpdir = point_direction(other.x, other.y, x, y)
motion_add(bumpdir, 10);

audio_play_sound(wav_spring, 2, false)

alarm_set(0, 30)