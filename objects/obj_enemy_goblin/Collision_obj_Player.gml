/// @description Insert description here
// You can write your code in this editor
if holding_ball{
	holding_ball = false;
	instance_destroy(obj_Ball);	
	mv_speed = 5;
	if global.broken == true {
		global.broken = false;
	}
}