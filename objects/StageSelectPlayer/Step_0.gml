/// @description Insert description here
// You can write your code in this editor
if (keyboard_check(ord("W")) && y > 0) y -= 5;
if (keyboard_check(ord("S")) && y < 768) y += 5;

if (keyboard_check(ord("D")) && x < 1366) x += 5;
if (keyboard_check(ord("A")) && x > 0) x -= 5;



//image_angle = point_direction(x,y,mouse_x,mouse_y);

//timer--;
//if(timer <= 0){
//	instance_create_layer(random_range(0,1366),0,layer,Enemy);   // spawn enemy along top
//	instance_create_layer(random_range(0,1366),768,layer,Enemy); // spawn enemy along bottom
//	instance_create_layer(1366,random_range(0,768),layer,Enemy); // spawn enemy along right
//	instance_create_layer(0,random_range(0,768),layer,Enemy);    // spawn enemy along left
//	timer = 600;
//}


