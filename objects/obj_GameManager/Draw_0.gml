/// @description Insert description here
// You can write your code in this editor

switch(room){
	case rm_init:
	
	break;
	
	case rm_main_menu:
	draw_set_halign(fa_center)
	draw_text(room_width/2, room_height/2,
	"Press Enter to start!!!");
	draw_set_halign(fa_left)
	break;
}

if paused == true
{
	if !sprite_exists(paused_sprite){
		show_debug_message("creating sprite")

		paused_sprite = sprite_create_from_surface(application_surface,0,0,surface_get_width(application_surface),surface_get_height(application_surface),0,1,0,0);	
	}
	//draw_sprite(paused_sprite, -1, 0, 0);
	var _cx = camera_get_view_x(view_camera[0])
	var _cy = camera_get_view_y(view_camera[0])
	
	var vratio = 480/1366
	draw_sprite_ext(paused_sprite, -1, _cx, _cy, vratio,vratio, 0, c_white, 1);
	draw_set_alpha(0.5);
    draw_rectangle_colour(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, false);
    draw_set_alpha(1);
    draw_text_transformed_colour(_cx + 5, _cy , "PAUSED", 2, 2, 0, c_aqua, c_aqua, c_aqua, c_aqua, 1);
	if !paused_player
        {
		obj_Player.left = 0
		obj_Player.right = 0
		obj_Player.up = 0
		obj_Player.down = 0

		obj_Player.w = 0
		obj_Player.a = 0
		obj_Player.s = 0
		obj_Player.d = 0
		instance_deactivate_all(true);
		
		paused_player = true;
        }
	
	/*
if !surface_exists(paused_surf)
    {
    if paused_surf == -1
        {
		obj_Player.left = 0
		obj_Player.right = 0
		obj_Player.up = 0
		obj_Player.down = 0

		obj_Player.w = 0
		obj_Player.a = 0
		obj_Player.s = 0
		obj_Player.d = 0
		instance_deactivate_all(true);
        }
    paused_surf = surface_create(view_get_wport(0), view_get_hport(0));
    surface_set_target(paused_surf);
	draw_clear_alpha(c_black, 1);
	surface_reset_target();
	paused_sprite = sprite_create_from_surface(application_surface,0,0,surface_get_width(application_surface),surface_get_height(application_surface),0,1,0,0);
	paused_surf = view_surface_id[0]; 
	
	/*
	var _vx = camera_get_view_x(view_camera[0]);
	var _vy = camera_get_view_y(view_camera[0]);
    draw_surface(paused_surf, _vx, _vy);
    }
else
    {
	var _vx = camera_get_view_x(view_camera[0]);
	var _vy = camera_get_view_y(view_camera[0]);
    draw_surface(paused_surf, _vx, _vy);
    draw_set_alpha(0.5);
    draw_rectangle_colour(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, false);
    draw_set_alpha(1);
    draw_set_halign(fa_center);
    draw_text_transformed_colour(view_get_xport(0) + (view_get_wport(0)/2), view_get_yport(0) + (view_get_hport(0)/2), "PAUSED", 2, 2, 0, c_aqua, c_aqua, c_aqua, c_aqua, 1);
    draw_set_halign(fa_left);
    }
	
	*/
}