global.grid = mp_grid_create(0, 0, room_width /4, room_height /4,4, 4);
mp_grid_add_instances(global.grid, obj_Wall_Parent, true);

audio_play_sound(wav_gameplay_loop, 10, true)