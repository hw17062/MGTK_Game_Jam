/// @description Insert description here
// You can write your code in this editor
draw_self();


if !global.broken{
	thickness = 5 * (1 - (dist / max_dist));

	colour = merge_colour(c_red, c_blue, thickness/5);

	draw_set_alpha(0.5);
	draw_line_width_colour(x,y,player_pos_x,player_pos_y,thickness,colour,colour);
	draw_set_alpha(1);
}
else{
	draw_line_width_colour(x,y,player_pos_x,player_pos_y,1,c_red,c_red);
}

if recalling{
	draw_circle_colour(loc_to_move_x, loc_to_move_y, 32, c_purple, c_purple, true);
}
