ShootTimer--;
if (ShootTimer <= 0 && x < 1366 && x > PlayerSideScrolling.x) {
	instance_create_layer(x + 100,y + 140,layer,diamondguyProjectileGreen);
	instance_create_layer(x + 100,y + 220,layer,diamondguyProjectileGreen);
	ShootTimer = 120;	
}

if (Health <= 0){
	instance_destroy();
}



