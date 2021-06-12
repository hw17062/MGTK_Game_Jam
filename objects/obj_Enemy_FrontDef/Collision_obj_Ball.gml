/// @description Insert description here
// You can write your code in this editor
show_debug_message("Hit Shielded Enemy");
col_dir = point_direction(x, y, other.x, other.y)

if col_dir > facing + 45 || col_dir < facing - 45 {
 instance_destroy(self);
}