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
    paused_surf = surface_create(room_width, room_height);
    surface_set_target(paused_surf);
    draw_surface(application_surface, 0, 0);
    surface_reset_target();
    }
else
    {
    draw_surface(paused_surf, 0, 0);
    draw_set_alpha(0.5);
    draw_rectangle_colour(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, false);
    draw_set_alpha(1);
    draw_set_halign(fa_center);
    draw_text_transformed_colour(room_width / 2, room_height / 2, "PAUSED", 2, 2, 0, c_aqua, c_aqua, c_aqua, c_aqua, 1);
    draw_set_halign(fa_left);
    }
}