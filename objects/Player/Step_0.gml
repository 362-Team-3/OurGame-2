// == movement ==========================================
if (keyboard_check(ord("W")) && y > 0) y -= 5;
if (keyboard_check(ord("S")) && y < 768) y += 5;

if (keyboard_check(ord("D")) && x < 1366) x += 5;
if (keyboard_check(ord("A")) && x > 0) x -= 5;
// ======================================================

// == Player should not follow mouse for aiming on side scrolling levels ====
if (!sideScrolling){
	image_angle = point_direction(x,y,mouse_x,mouse_y);
}
else {
	image_angle = 0;	
}
// ======================================================


// == shoot timers and shooting =========================
ShootTimer--;
ShootTimer2--;

//checks for Cannon Upgrade
if(mouse_check_button_pressed(mb_right) && global.Cannon == 1 && ShootTimer2 <= 0)
{
	instance_create_layer(x,y - 60,layer,Player_Projectile_Explosion);
	ShootTimer2 = 240;
}
//Checks for Tri-Shot Upgrade (replaces basic fire)
if(mouse_check_button_pressed(mb_left) && ShootTimer <= 0 && global.gunLvl == 1)
{
	instance_create_layer(x,y - 10,layer,Player_Projectile);
	instance_create_layer(x,y,layer,Player_Projectile);
	instance_create_layer(x,y + 10,layer,Player_Projectile);
	ShootTimer = 15;
}
//basic fire
else if (mouse_check_button_pressed(mb_left) && ShootTimer <= 0) {
	instance_create_layer(x,y,layer,Player_Projectile);
	ShootTimer = 15;	
}
// ======================================================

//return to main menu upon death
if (Health <= 0){
	audio_stop_all();
	room_goto(LevelSelect);
}

// == color changing ====================================
switch(Color){
	case "blue":
		sprite_index = Player_Blue;
		break;
	case "red":
		sprite_index = Player_Red;
		break;
	case "green":
		sprite_index = Player_Green;
		break;
	default:
		break;
}
// ======================================================

//timer--;
//if(timer <= 0){
//	instance_create_layer(random_range(0,1366),0,layer,Enemy);   // spawn enemy along top
//	instance_create_layer(random_range(0,1366),768,layer,Enemy); // spawn enemy along bottom
//	instance_create_layer(1366,random_range(0,768),layer,Enemy); // spawn enemy along right
//	instance_create_layer(0,random_range(0,768),layer,Enemy);    // spawn enemy along left
//	timer = 600;
//}


