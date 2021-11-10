/// @description Insert description here
// You can write your code in this editor
Health = 25

a = instance_create_layer(x,y,layer,StaticLaser);
a.image_angle = image_angle+90;

b = instance_create_layer(x,y,layer,StaticLaser);
b.image_angle = image_angle-90;