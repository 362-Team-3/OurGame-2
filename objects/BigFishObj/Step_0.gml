ShootTimer--;
if (ShootTimer <= 0 && x < 1366 && x > PlayerSideScrolling.x) {
	instance_create_layer(x,y + 80,layer,BubbleObj);
	ShootTimer = 12;	
}