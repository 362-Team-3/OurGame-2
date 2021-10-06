/// @description Insert description here
// You can write your code in this editor

if(timer >= 30)
{
	instance_destroy();
}


if (y < -20 || y > 788 || x < -20 || x > 1386) instance_destroy();
timer++;