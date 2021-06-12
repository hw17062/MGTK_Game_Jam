/// @description Insert description here
// You can write your code in this editor

mp_grid_path(global.grid, path, x, y, obj_Player.x, obj_Player.y, true);

path_start(path, 2, path_action_stop, true);

facing = round(direction / 45) * 45;
image_angle = facing;