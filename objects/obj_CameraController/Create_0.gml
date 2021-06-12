/// @description Insert description here
// You can write your code in this editor

//camera_game = camera_create();
follow = noone;

var vm = matrix_build_lookat(x, y, -10,x,y,0,0,1,0);
var pm = matrix_build_projection_ortho(100,  100, 1 ,10000);

camera_set_view_mat(view_camera[0], vm);
camera_set_proj_mat(view_camera[0], pm);



view_enabled = true;
view_visible[0] = true;
//view_camera[0] = camera_game;
//view_set_camera(0, view_camera[0]);
