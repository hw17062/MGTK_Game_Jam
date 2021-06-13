/// @description Insert description here
// You can write your code in this editor

audio_play_sound(wav_pillar_drag, 1, true)
sound = 0

recalling = false
spawn_dir = point_direction(x,y,mouse_x,mouse_y)

motion_set(spawn_dir, 3.2);
stolen = noone; //holds if the ball is stolen, is it is, then this holds who has it

//init dist to play = 0
dist = 0;
player_pos_x = obj_Player.x;
player_pos_y = obj_Player.y;
player_pos_y = obj_Player.y;