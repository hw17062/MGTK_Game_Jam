/// @description Insert description here
// You can write your code in this editor

// get the starting pos for the aiming
start_x = obj_Player.x;
start_y = obj_Player.y;

//Get where the mouse is aiming
m_x = mouse_x;
m_y = mouse_y;

//Get the angle betwee the player and the mouse
aim_dir = point_direction(start_x, start_y, mouse_x, mouse_y);
length = 1000;	//Length of aim line

// The x,y of where the aim will end if straight
end_x =  start_x + lengthdir_x(length, aim_dir);
end_y =  start_y + lengthdir_y(length, aim_dir);

//Draw a line between the player at the end of the aiming, no collision yet
//draw_line_width_colour(start_x,start_y, end_x, end_y, 1, c_white, c_white);



//while length > 0{
hit_obj = collision_line(start_x, start_y, end_x, end_y, all, true, false);

if hit_obj != noone{
	dist = distance_to_object(hit_obj);
	//length -= dist
	end_x = start_x + lengthdir_x(dist, aim_dir);
	end_y = start_y + lengthdir_y(dist, aim_dir);
	draw_line_width_colour(start_x,start_y, end_x, end_y, 2, $FFFFFF, $FFFFFF);
}
else{
	draw_line_width_colour(start_x,start_y, end_x, end_y, 2, $FFFFFF, $FFFFFF);
}
//}

