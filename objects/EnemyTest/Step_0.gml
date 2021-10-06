/// @description Insert description here

if (instance_exists(PlayerSideScrolling)) {
	image_angle = point_direction(x,y,PlayerSideScrolling.x,PlayerSideScrolling.y);
	motion_add(point_direction(x,y,PlayerSideScrolling.x,PlayerSideScrolling.y),0.4);
	if (speed > .5) speed = .5;
}

ShootTimer--;
if (ShootTimer <= 0) {
	instance_create_layer(x,y,layer,EnemyTestProjectile);
	ShootTimer = 1;	
}

if (Health <= 0){
	instance_destroy();
}

//timer--;
//if(timer <= 0){
//	instance_create_layer(random_range(0,1366),0,layer,Enemy);   // spawn enemy along top
//	instance_create_layer(random_range(0,1366),768,layer,Enemy); // spawn enemy along bottom
//	instance_create_layer(1366,random_range(0,768),layer,Enemy); // spawn enemy along right
//	instance_create_layer(0,random_range(0,768),layer,Enemy);    // spawn enemy along left
//	timer = 600;
//}


