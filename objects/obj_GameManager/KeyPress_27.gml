/// @description Insert description here
// You can write your code in this editor

//if currently paused, unpause
if paused {
	paused = false
	instance_activate_all();
	sprite_delete(paused_sprite);
}

// if unpaused, pause
else if !paused
{
	paused = true
	show_debug_message("creating sprite")
	paused_sprite = sprite_create_from_surface(application_surface,0,0,surface_get_width(application_surface),surface_get_height(application_surface),0,1,0,0);	
		
	//once sprite is made, deactivate objects
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
