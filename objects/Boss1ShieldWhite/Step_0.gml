/// @description Insert description here
// You can write your code in this editor
image_angle++;
if(Boss1.BossTurrets <= 0) instance_destroy();

if(!Boss1.Invulnerable){
	
	switch(Boss1.BossTurrets){
		case 3:
			sprite_index = Boss1ShieldWhiteBroken1_Sprite;
			break;
		case 2:
			sprite_index = Boss1ShieldWhiteBroken2_Sprite;
			break;
		case 1:
			sprite_index = Boss1ShieldWhiteBroken3_Sprite;
			break;
		default:
			//do nothing
			break;
	}
	
}else{
	sprite_index = Boss1ShieldWhiteFull_Sprite;
}