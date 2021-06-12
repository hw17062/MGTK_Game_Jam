/// @description Insert description here
// You can write your code in this editor
//camera_game = camera_create();

if room == rm_game || room == rm_arena {
	var vm = matrix_build_lookat(x, y, -10,x,y,0,0,1,0);
	var pm = matrix_build_projection_ortho(680,  420, 1 ,10000);

	camera_set_view_mat(view_camera[0], vm);
	camera_set_proj_mat(view_camera[0], pm);



	view_enabled = true;
	view_visible[0] = true;
	follow = obj_Player;
	//view_camera[0] = camera_game;
	//view_set_camera(0, view_camera[0]);
} else {
	follow = noone;
	var vm = matrix_build_lookat(room_width/2, room_height/2, -10,room_width/2,room_height/2,0,0,1,0);
	var pm = matrix_build_projection_ortho(room_width, room_height, 1 ,10000);

	camera_set_view_mat(view_camera[0], vm);
	camera_set_proj_mat(view_camera[0], pm);

	view_enabled = true;
	view_visible[0] = true;
}
