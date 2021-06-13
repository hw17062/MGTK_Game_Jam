/// @description Insert description here
// You can write your code in this editor
if bumpermax > bumpercurrent{
	show_debug_message("spawning....")
	map = ds_grid_create(room_width / 4, room_height / 4);
	mp_grid_to_ds_grid(global.grid, map);

	var i = -1;
	var j = -1;
	var pos_ok = false;
	while !pos_ok {
		i = irandom(room_width / 4);
		j = irandom(room_height / 4);
		if map[# i, j] == 0{
			pos_ok = true;
		}
	}

	instance_create_layer(i*4, j*4, "Instances", obj_BasicEnemy);
	instance_create_layer(i*4, j*4 + 20, "Instances_1", obj_spawn_beam);
	audio_play_sound(wav_beam_short, 1, false)
	audio_sound_pitch(wav_beam_short, random_range(0.6,2))
	bumpercurrent++;
	alarm_set(0, random_range(0,1) * 60)
}
else {
	
	alarm_set(0, irandom_range(5,10) * 60)
}


