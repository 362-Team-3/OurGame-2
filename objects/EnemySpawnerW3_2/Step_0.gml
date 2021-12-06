Time++

colors = [EnemyThreeShot, EnemyThreeShotBlue, EnemyThreeShotGreen];

if (Time mod 180 == 0) {
	
	instance_create_layer(1500, random_range(0, 768), layer, colors[irandom_range(0,2)])
	
}

if (Time mod 300 == 0) {
	for (var i = 0; i < random_range(2, 20); i += 1)
	{
		instance_create_layer(1500, random_range(0, 768), layer, FishObj)
	}
	for (var i = 0; i < random_range(1, 4); i += 1)
	{
		instance_create_layer(1500, random_range(0, 768), layer, BigFishObj)
	}
	
	instance_create_layer(1500, random_range(0, 768), layer, asteroidObj)
	instance_create_layer(1500, random_range(0, 768), layer, asteroidObj)
	instance_create_layer(1500, random_range(0, 768), layer, asteroidObj)
	
}