/// @description Insert description here
// You can write your code in this editor
Health = 100;
ShootTimer = 15;
ShootTimer2 = 15;
Color = "red";

Colors = ["red",  "green", "blue"]
ColorsIndex = 0;


maxHealth = Health;

healthbar_width = 200;
healthbar_height = 12;
healthbar_x = (400/2) - (healthbar_width/2);
healthbar_y = ystart + 100;

if (instance_exists(Boss1)){ 
	sideScrolling = false;
}
else {
	sideScrolling = true;
}