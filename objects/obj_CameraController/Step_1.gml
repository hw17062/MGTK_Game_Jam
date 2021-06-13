/// @description Insert description here
// You can write your code in this editor

if follow != noone {
	
	var vm = matrix_build_lookat(follow.x,  follow.y, -10,follow.x, follow.y,0,0,1,0);
	camera_set_view_mat(view_camera[0], vm);
	if follow.x > room_width - 240
	{
		cam_x = room_width - 480
	}
	else if follow.x < 240
	{
		cam_x = 0
	}
	else
	{
		cam_x = follow.x - 240
	}
	
	if follow.y > room_height - 135
	{
		cam_y = room_height - 270
	}
	else if follow.y < 135
	{
		cam_y = 0
	}
	else
	{
		cam_y = follow.y - 135
	}
	camera_set_view_pos(view_camera[0], cam_x, cam_y)
}