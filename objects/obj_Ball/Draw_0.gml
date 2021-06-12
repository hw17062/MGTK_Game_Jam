/// @description Insert description here
// You can write your code in this editor
draw_self();
player_pos_x = obj_Player.x
player_pos_y = obj_Player.y

dist = point_distance(x, y, player_pos_x, player_pos_y);
max_dist = 600;

if dist < max_dist && !broken{
	thickness = 5 * (1 - (dist / max_dist));

	colour = merge_colour(c_red, c_blue, thickness/5);

	draw_set_alpha(0.5);
	draw_line_width_colour(x,y,player_pos_x,player_pos_y,thickness,colour,colour);
	draw_set_alpha(1);
}
else{
	broken = true
	draw_line_width_colour(x,y,player_pos_x,player_pos_y,1,c_red,c_red);
}