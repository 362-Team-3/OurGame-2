/// @description Insert description here
// You can write your code in this editor
Color = AsteroidBossPlayer.Color;

switch(Color){
	case "blue":
		sprite_index = PlayerLaserBlue_Sprite;
		break;
	case "red":
		sprite_index = PlayerLaserRed_Sprite;
		break;
	case "green":
		sprite_index = PlayerLaserGreen_Sprite;
		break;
	default:
		break;
}


image_xscale = 0.5;
image_yscale = 1;

image_angle = point_direction(x,y,mouse_x,mouse_y);
motion_set(image_angle,4);
audio_play_sound(SelectLevelButton, 500, false);