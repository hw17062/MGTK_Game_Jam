/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y,obj_Wall_Parent) != noone{
	dir = point_direction(x, y, obj_Wall_Parent.x, obj_Wall_Parent.y);
	move_outside_solid(-dir,50);
}