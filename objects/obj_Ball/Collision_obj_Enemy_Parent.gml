/// @description Insert description here
// You can write your code in this editor

if other.visible{
	move_bounce_all(true);
	if init_throw{
		obj_GameManager.tit_init_hits++;
	}
	else if bouncing{
		obj_GameManager.tit_bounce_hits++;
	}
}