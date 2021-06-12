/// @description Insert description here
// You can write your code in this editor

light_up = 0

fade = 1
surfacewithmask = surface_create(room_width, room_height)
instance_create_layer(0,808,"Instances", obj_spotlight_neg)
instance_create_layer(1366,808,"Instances", obj_spotlight_sin)

alarm_set(0, 500)