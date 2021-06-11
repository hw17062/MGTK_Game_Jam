/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x + hspeed, y, obj_Wall))
    direction = -direction + 180;

//Vertical bounce
if(place_meeting(x, y + vspeed, obj_Wall))
    direction = -direction;
	
//Hit enemy and stop
if(place_meeting(x, y + vspeed, obj_Enemy) || place_meeting(x + hspeed, y, obj_Enemy)){
	motion_set(direction, 0);
}