/// @description Insert description here
// You can write your code in this editor
if (!Boss1.Invulnerable){
	with(other) Health -= 10;
	BossHealthBar.image_xscale -= .05;
}

instance_destroy();