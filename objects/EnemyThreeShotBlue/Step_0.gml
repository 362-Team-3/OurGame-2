ShootTimer--;
if (ShootTimer <= 0 && x < 1366 && x > PlayerSideScrolling.x) {
	instance_create_layer(x,y + 140,layer,ThreeShotProjectileBlue);
	instance_create_layer(x,y + 80,layer,ThreeShotProjectileBlue);
	instance_create_layer(x,y + 220,layer,ThreeShotProjectileBlue);
	ShootTimer = 120;	
}

if (Health <= 0){
	instance_destroy();
}



