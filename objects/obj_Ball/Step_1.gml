/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x + hspeed, y, obj_Wall))
    direction = -direction + 180;

//Vertical bounce
if(place_meeting(x, y + vspeed, obj_Wall))
    direction = -direction;