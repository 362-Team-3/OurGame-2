if (instance_exists(PlayerSideScrolling)){
	move_towards_point(PlayerSideScrolling.x,PlayerSideScrolling.y + 60,8);
}
image_angle = point_direction(x,y,PlayerSideScrolling.x,PlayerSideScrolling.y);

image_xscale = 0.5;
image_yscale = 0.5;
