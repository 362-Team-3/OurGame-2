Time++

if (Time mod 180 == 0) {
	
	instance_create_layer(1500, random_range(0, 768), layer, EnemyThreeShot)
	
}

if (Time mod 300 == 0) {
	
	instance_create_layer(1500, random_range(0, 768), layer, asteroidObj)
	instance_create_layer(1500, random_range(0, 768), layer, asteroidObj)
	instance_create_layer(1500, random_range(0, 768), layer, asteroidObj)
	
}