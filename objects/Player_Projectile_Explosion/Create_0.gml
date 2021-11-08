/// @description Insert description here
// You can write your code in this editor
image_xscale = 0.5;
image_yscale = 0.5;

image_angle = point_direction(x,y,x,y);
motion_set(image_angle,10);
audio_play_sound(SelectLevelButton, 500, false);