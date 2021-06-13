/// @description Insert description here
// You can write your code in this editor
bumpdir = point_direction(other.x, other.y, x, y)
bumpspd = 2
audio_play_sound(wav_spring, 2, false)

with (other){
	bumpdir = point_direction( obj_Player.x,  obj_Player.y,x, y)
	motion_add(bumpdir, 1);
	tracking = false;
	alarm_set(0,30);
}