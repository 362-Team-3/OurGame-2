/// @description Insert description here
// You can write your code in this editor
aimingTimer--;
/*
var pd = point_direction(x,y,Player.x,Player.y);
var dd = angle_difference(image_angle,pd);
image_angle -= min(abs(dd), .5) * sign(dd);
*/

image_angle += .5*rotationDirection;

if(aimingTimer == 0) rotationDirection = 0;

if(aimingTimer == -30) sprite_index = TempBoss1LaserFiringRed_Sprite;
if(aimingTimer < -30) image_yscale += 0.02;
if(aimingTimer <= -60) image_yscale -= .1;
if(image_yscale  <= 0) instance_destroy();