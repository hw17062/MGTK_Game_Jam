/// @description Insert description here
// You can write your code in this editor

dir_x = obj_Player.x
dir_y = obj_Player.y

dir_theta = point_direction(x, y, dir_x, dir_y)
motion_set(dir_theta, 7)