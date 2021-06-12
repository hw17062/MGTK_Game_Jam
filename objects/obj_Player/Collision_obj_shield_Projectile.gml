/// @description Insert description here
// You can write your code in this editor
instance_destroy(other);
bumpdir = other.direction
motion_add(bumpdir, 3);

alarm_set(0, 30);