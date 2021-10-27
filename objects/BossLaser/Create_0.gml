if (instance_exists(Boss1ShieldRed)) Color = "red";
else if (instance_exists(Boss1ShieldGreen)) Color = "green";
else if (instance_exists(Boss1ShieldBlue)) Color = "blue";
else Color = "white";			

switch(Color){
	case "blue":
		sprite_index = TempBoss1LaserChargingBlue_Sprite;
		break;
	case "red":
		sprite_index = TempBoss1LaserChargingRed_Sprite;
		break;
	case "green":
		sprite_index = TempBoss1LaserChargingGreen_Sprite;
		break;
	default:
		break;
}


/// @description Insert description here
// You can write your code in this editor
aimingTimer = 180;
rotationDirection = 1;
//Color = "red";
//spawnAngle = point_direction(x,y,Player.x,Player.y)-90;
//if(Boss1.ShootTimer % 2 == 0) image_angle = spawnAngle
//else image_angle = spawnAngle - 180