/// @description Insert description here
// You can write your code in this editor

while collision_point(x, y, other, false, false) != noone{
	dir_between = point_direction(x, y, other.x,other.y)

	m_x = lengthdir_x(-1,dir_between)
	m_y = lengthdir_y(-1,dir_between)

	x += m_x
	y += m_x
}