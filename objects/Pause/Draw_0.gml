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
		draw_text_transformed_colour(room_width / 2, room_height / 2, "PAUSED", 3, 3, 0, c_white, c_white, c_yellow, c_yellow, 1);
		
		//Creates the Pause menu GUI 
		//Positions text
		draw_set_font(titleFont);
		draw_set_halign(fa_center);
		draw_set_valign(fa_bottom);
		//loop to handle menu movement
		for(i = 0; i < pauseMenuItems; i++)
		{
			var offset = 2;
			var txt = pauseMenu[i];
			//if option in menu is being hovered, change color to white
			//else, change color to gray
			if(pauseMenuCursor == i)
			{
				txt = string_insert("> ",txt, 0);
				var col = c_white;
			}
			else
			{
				var col = c_gray;
			}
			var xx = pauseMenuX/2;
			var yy = pauseMenuY/2 - (pauseMenuHeight * (i * 1.5));
			draw_set_color(c_black);
			draw_text(xx - offset,yy,txt);
			draw_text(xx + offset,yy,txt);
			draw_text(xx,yy - offset,txt);
			draw_text(xx,yy + offset,txt);
			draw_set_color(col);
			draw_text(xx,yy,txt);
		}
		
		draw_set_halign(fa_left);
		

    }

}

