/// @description Insert description here
// You can write your code in this editor
draw_self()

if !surface_exists(surfacewithmask) {surfacewithmask = surface_create(room_width, room_height)}

surface_set_target(surfacewithmask)

if light_up = 0
{
	draw_rectangle_colour(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, false)
	draw_set_halign(fa_center)
	draw_text(room_width/2, room_height/2, "The Pyjama Jammers present")
	draw_set_halign(fa_left)
}
else
{
	draw_rectangle_colour(0, 0, room_width, room_height, c_white, c_white, c_white, c_white, false)
	draw_set_alpha(fade)
	if fade > 0
	{
		fade -= 0.05
		alarm_set(1,225)
	}
}


gpu_set_blendmode(bm_subtract)
draw_circle(obj_spotlight_sin.x,obj_spotlight_sin.y, 100, false)
draw_circle(obj_spotlight_neg.x,obj_spotlight_neg.y, 80, false)

gpu_set_blendmode(bm_normal)

surface_reset_target()

draw_surface(surfacewithmask,x,y)
draw_set_alpha(1)