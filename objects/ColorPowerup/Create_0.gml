if (instance_exists(Boss1ShieldRed)) Color = "red";
else if (instance_exists(Boss1ShieldGreen)) Color = "green";
else if (instance_exists(Boss1ShieldBlue)) Color = "blue";
else Color = "white";			

switch(Color){
	case "blue":
		sprite_index = TempColorPowerupBlue_Sprite;
		break;
	case "red":
		sprite_index = TempColorPowerupRed_Sprite;
		break;
	case "green":
		sprite_index = TempColorPowerupGreen_Sprite;
		break;
	default:
		break;
}


