/// @description Insert description here
// You can write your code in this editor
paused = !paused;

// What to do when paused
if paused == false
	{
		paused_player = false
		instance_activate_all();
		sprite_delete(paused_sprite);
        //surface_free(paused_surf);
        //        paused_surf = -1;
    }
