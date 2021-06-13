/// @description Insert description here
// You can write your code in this editor

if global.broken{
	//draw_sprite(spr_timer,irandom(3),room_width - 30, room_height /3)
	time_left = (alarm_get(0) / (60 * 5)) * 100
	draw_healthbar(room_width - 33, room_height /3, room_width - 20, (2*room_height/3), time_left, c_black,c_red, c_yellow, 3, true, true);
}

combo_timer = (alarm_get(1) / 90) * 100
if combo_timer > 0{
	roman_Combo = rom_num(combo);
	
	draw_set_font(fnt_ComboFont);
	draw_set_colour(c_red);
	draw_text(10, 10, roman_Combo);
	
	draw_healthbar(5, 80, 100, 85, combo_timer, c_black, c_red, c_red, 0, false, false);
	if cheer_sound == 0 and combo > 0
	{
		audio_play_sound(wav_crowd_cheer, 1, true)
		cheer_sound = 1
	}
	if cheer_sound == 1 and combo > 4
	{
		audio_sound_pitch(wav_crowd_cheer, 1.05)
		cheer_sound = 2
	}
	if cheer_sound == 2 and combo > 9
	{
		audio_sound_pitch(wav_crowd_cheer, 1.1)
		cheer_sound = 3
	}
	if cheer_sound == 3 and combo > 14
	{
		audio_sound_pitch(wav_crowd_cheer, 1.2)
		cheer_sound = 4
	}
	if cheer_sound != 0 and combo == 0
	{
		audio_stop_sound(wav_crowd_cheer)
	}
}










// roman numerals converter

