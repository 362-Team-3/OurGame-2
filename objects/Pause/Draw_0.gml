if pause == true
{
	if !surface_exists(pause_screen)
    {
		if pause_screen == -1
			{
				instance_deactivate_all(true);
			}
		pause_screen = surface_create(room_width, room_height);
		surface_set_target(pause_screen);
		draw_surface(application_surface, 0, 0);
		surface_reset_target();
    }
	else
    {
		draw_surface(pause_screen, 0, 0);
		draw_set_alpha(0.5);
		draw_rectangle_colour(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, false);
		draw_set_alpha(1);
		draw_set_halign(fa_center);
		draw_text_transformed_colour(room_width / 2, room_height / 2, "PAUSED", 2, 2, 0, c_white, c_white, c_yellow, c_yellow, 1);
		draw_set_halign(fa_left);
    }
}