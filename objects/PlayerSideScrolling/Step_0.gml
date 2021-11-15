/// @description Insert description here
// You can write your code in this editor
if (keyboard_check(ord("W")) && y > 0) y -= 5;
if (keyboard_check(ord("S")) && y < 768) y += 5;

if (keyboard_check(ord("D")) && x < 1366) x += 5;
if (keyboard_check(ord("A")) && x > 0) x -= 5;



image_angle = point_direction(x,y,x,y);

ShootTimer--;
ShootTimer2--;

/// @description Insert description here
// You can write your code in this editor
if(mouse_check_button_pressed(mb_right) && global.Cannon == 1 && ShootTimer2 <= 0)
{
	instance_create_layer(x,y - 60,layer,Player_Projectile_Explosion);
	ShootTimer2 = 240;
}

if(mouse_check_button_pressed(mb_left) && ShootTimer <= 0 && global.gunLvl == 1)
{
	instance_create_layer(x,y - 10,layer,Player_Projectile_SideScrolling);
	instance_create_layer(x,y,layer,Player_Projectile_SideScrolling);
	instance_create_layer(x,y + 10,layer,Player_Projectile_SideScrolling);
	ShootTimer = 15;
}

else if (mouse_check_button_pressed(mb_left) && ShootTimer <= 0) {
	instance_create_layer(x,y,layer,Player_Projectile_SideScrolling);
	ShootTimer = 15;
}

if (Health <= 0){
	audio_stop_all()
	room_goto(LevelSelect);
}

//timer--;
//if(timer <= 0){
//	instance_create_layer(random_range(0,1366),0,layer,Enemy);   // spawn enemy along top
//	instance_create_layer(random_range(0,1366),768,layer,Enemy); // spawn enemy along bottom
//	instance_create_layer(1366,random_range(0,768),layer,Enemy); // spawn enemy along right
//	instance_create_layer(0,random_range(0,768),layer,Enemy);    // spawn enemy along left
//	timer = 600;
//}



