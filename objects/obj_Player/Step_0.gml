/// @description Insert description here
// You can write your code in this editor
<<<<<<< Updated upstream
vx = (right - left)

vy = (down - up)

=======
vx = (right - left) * walkSpeed
vy = (down - up) * walkSpeed

if vx != 0 and vy != 0
{
	vx = vx/sqrt(2)
	vy = vy/sqrt(2)
}

x += vx
y += vy
>>>>>>> Stashed changes
