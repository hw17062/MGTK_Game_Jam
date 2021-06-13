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
		j = irandom(room_width / 4);
		if map[# i, j] == 0{
			pos_ok = true;
		}
	}

	instance_create_layer(i*4, j*4, "Instances", obj_BasicEnemy);
	bumpercurrent++;
	alarm_set(0, irandom_range(1,2) * 60)
}else {
	
	alarm_set(0, irandom_range(3,5) * 60)
}