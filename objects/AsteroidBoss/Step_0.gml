Time++;

if (Time mod 240 == 0) {
	ColorIndex++;
	if(ColorIndex > 3) {
		ColorIndex = 0;
		Color = Colors[ColorIndex];
	} else {
		Color = Colors[ColorIndex];
	}
	
	switch(Color){
	case "norm":
		sprite_index = asteroidBoss;
		break;
	case "blue":
		sprite_index = asteroidBlue;
		break;
	case "red":
		sprite_index = asteroidRed;
		break;
	case "green":
		sprite_index = asteroidGreen;
		break;
	default:
		break;
	}
	
	instance_create_layer(x, random_range(0, 640), layer, asteroidDrone)
	instance_create_layer(x, random_range(0, 640), layer, asteroidDrone)
	instance_create_layer(x, random_range(0, 640), layer, asteroidDrone)
	instance_create_layer(x, random_range(0, 640), layer, asteroidDrone)
	instance_create_layer(x, random_range(0, 640), layer, asteroidDrone)
	instance_create_layer(x, random_range(0, 640), layer, asteroidDrone)
	instance_create_layer(x, random_range(0, 640), layer, asteroidDrone)
	instance_create_layer(x, random_range(0, 640), layer, asteroidDrone)
	instance_create_layer(x, random_range(0, 640), layer, asteroidDrone)
	instance_create_layer(x, random_range(0, 640), layer, asteroidDrone)
	
}




if (Health <= 0) instance_destroy();