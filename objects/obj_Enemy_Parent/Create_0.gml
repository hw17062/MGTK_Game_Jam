/// @description Insert description here
// You can write your code in this editor
randomise()
path = path_add()
scream = irandom(2)
if scream == 0
{
	scream = wav_scream1
}
else if scream == 1
{
	scream = wav_scream2
}
else
{
	scream = wav_scream3
}

timer = irandom_range(30, 180)

alarm_set(4, timer)

sound = 0

attacking = 0