/// @description Insert description here
// You can write your code in this editor

view_visible[0] = false;
view_visible[1] = true;


	
view_xport[1] = 0;
view_yport[1] = 0;
view_wport[1] = room_width;
view_hport[1] = room_height;

view_camera[1] = camera_create_view(0, 0, view_wport[0], view_hport[0], 0, -1, 10, 10, 5000, 5000);