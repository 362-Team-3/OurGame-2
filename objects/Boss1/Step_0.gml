/// @description Insert description here
// You can write your code in this editor
//if (instance_exists(Player)) {
	
//	motion_add(point_direction(x,y,Player.x,Player.y),0.05);
//	if (speed > 2) speed = 2;
//}

if (!Invulnerable){
	
	if(MulticolorShields){
		if (ShootTimer>=420 && ShootTimer%210 == 0){
			var a = instance_create_layer(x,y,layer,BossLaser);
			a.rotationDirection = -1;
			a.image_angle = point_direction(x,y,Player.x,Player.y)+90;
			if (instance_exists(Boss1ShieldRed)) a.Color = "red";
			else if (instance_exists(Boss1ShieldGreen)) a.Color = "green";
			else if (instance_exists(Boss1ShieldBlue)) a.Color = "blue";
			
			a = instance_create_layer(x,y,layer,BossLaser);
			a.rotationDirection = 1;
			a.image_angle = point_direction(x,y,Player.x,Player.y)-90;
			if (instance_exists(Boss1ShieldRed)) a.Color = "red";
			else if (instance_exists(Boss1ShieldGreen)) a.Color = "green";
			else if (instance_exists(Boss1ShieldBlue)) a.Color = "blue";
		}
		if (ShootTimer <= -60) ShootTimer = 840;
	}else{
		if(ShootTimer <= 0 && ShootTimer%15 == 0) instance_create_layer(x,y,layer,BossProjectile);
		if (ShootTimer <= -60) ShootTimer = 420;
	}
	
	/*if(ShootTimer <= 0 && ShootTimer%15 == 0 && !MulticolorShields){
		instance_create_layer(x,y,layer,BossProjectile);
	}*/
	ShootTimer--;
	
	
}


if (BossTurrets == 3 && Health <= 75){
	Invulnerable = true;
	ShootTimer = 60
}
if (BossTurrets == 2 && Health <= 50){
	Invulnerable = true;
	ShootTimer = 60
}
if (BossTurrets == 1 && Health <= 25){
	Invulnerable = true;
	ShootTimer = 60
}

if (BossTurrets <= 0 && MulticolorShields == false){
	MulticolorShields = true;
	instance_create_layer(x,y,layer,Boss1ShieldBlue);
	instance_create_layer(x,y,layer,Boss1ShieldGreen);
	instance_create_layer(x,y,layer,Boss1ShieldRed);
}


if (Health <= 0) instance_destroy();