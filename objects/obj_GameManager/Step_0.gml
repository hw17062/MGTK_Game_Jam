/// @description Insert description here
// You can write your code in this editor

if global.broken{
	timer -= delta_time / 1000000; //delta time in seconds
	if timer <= 0{
		// Put end state here!!!
	}
} else{
	timer = max_timer;
}


if paused == true
    {
		alarm[0]++;
		alarm[1]++;
    }