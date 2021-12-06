if (instance_exists(PlayerSideScrolling)){
	move_towards_point(PlayerSideScrolling.x,PlayerSideScrolling.y + 60,8);
	image_angle = point_direction(x,y,PlayerSideScrolling.x,PlayerSideScrolling.y);
}
else if (instance_exists(Player)){
	move_towards_point(Player.x,Player.y + 60,8);
	image_angle = point_direction(x,y,Player.x,Player.y);
}

image_xscale = 0.8;
image_yscale = 0.8;
audio_play_sound(enemyLaser, 500, false);