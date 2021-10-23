/// @description Insert description here
// You can write your code in this editor
Color = Player.Color;

switch(Color){
	case "blue":
		sprite_index = TempPlayer_Blue;
		break;
	case "red":
		sprite_index = TempPlayer_Red;
		break;
	case "green":
		sprite_index = TempPlayer_Green;
		break;
	default:
		break;
}


image_xscale = 0.5;
image_yscale = 0.5;

image_angle = point_direction(x,y,mouse_x,mouse_y);
motion_set(image_angle,4);
audio_play_sound(SelectLevelButton, 500, false);