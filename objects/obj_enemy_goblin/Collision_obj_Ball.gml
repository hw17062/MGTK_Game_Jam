/// @description Insert description here
// You can write your code in this editor

if other.speed > 0 && !holding_ball{
	instance_destroy(self);
}else {
	holding_ball = true;
	other.stolen = self
	mv_speed = 2;
}