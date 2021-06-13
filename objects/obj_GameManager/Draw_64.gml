/// @description Insert description here
// You can write your code in this editor

if global.broken{
	time_left = (alarm_get(0) / (60 * 5)) * 100
	draw_healthbar(room_width - 30, room_height /3, room_width - 20, room_height *2 / 3, time_left, c_black,c_red, c_yellow, 3, true, true);
}

combo_timer = (alarm_get(1) / 90) * 100
if combo_timer > 0{
	roman_Combo = rom_num(combo);
	
	draw_set_font(fnt_ComboFont);
	draw_set_colour(c_red);
	draw_text(10, 10, roman_Combo);
	
	draw_healthbar(5, 80, 100, 85, combo_timer, c_black, c_red, c_red, 0, false, false);
}










// roman numerals converter

