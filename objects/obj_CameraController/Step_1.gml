/// @description Insert description here
// You can write your code in this editor

if follow != noone {
	
	var vm = matrix_build_lookat(follow.x,  follow.y, -10,follow.x, follow.y,0,0,1,0);
	camera_set_view_mat(view_camera[0], vm);
}