
if(AsteroidBoss.Time > 240) {
	
	if(AsteroidBoss.sprite_index == asteroidBoss) {
	with(other) Health -= 5;
	asteroidBossHealthBar.image_xscale -= .05;
	}
	if(AsteroidBoss.sprite_index == asteroidRed && Color == "red") {
	with(other) Health -= 5;
	asteroidBossHealthBar.image_xscale -= .05;
	}
	if(AsteroidBoss.sprite_index == asteroidGreen && Color == "green") {
	with(other) Health -= 5;
	asteroidBossHealthBar.image_xscale -= .05;
	}
	if(AsteroidBoss.sprite_index == asteroidBlue && Color == "blue") {
	with(other) Health -= 5;
	asteroidBossHealthBar.image_xscale -= .05;
	}
	
}

instance_destroy();