/// @description Insert description here
// You can write your code in this editor
death = irandom(2)
if death == 0
{
	audio_play_sound(wav_death1, 3, false)
}
else if death == 1
{
	audio_play_sound(wav_death2, 3, false)
}
else
{
	audio_play_sound(wav_death3, 3, false)
}

instance_create_layer(x,y,"Instances_1", obj_splatter)
obj_GameManager.comboCounter();