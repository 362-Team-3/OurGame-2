/// @description Insert description here
// You can write your code in this editor
if(global.gamePaused)
{
	draw_set_color(c_black);
	draw_set_alpha(0.5);
	draw_rectangle(0, 0, room_width, room_height, false);

	draw_set_alpha(1.0);
	draw_set_color(c_yellow);
	draw_set_font(titleFont);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle)
	draw_text_transformed_colour(room_width / 2, room_height / 3, "PAUSED", 3, 3, 0, c_white, c_white, c_yellow, c_yellow, 1);
		
	//loop to handle menu movement
	for(var i = 0; i < array_length(pauseOption); i++)
	{
		var hover = "";
		if (i == HOVER_PAUSE)
		{
			hover += "> " + pauseOption[i];
		}
		else
		{
			hover += pauseOption[i];
			draw_set_alpha(0.7);
		}
		draw_text_transformed_colour(room_width * 0.5, room_height * 0.5 + 15 + (i * 65), hover, 1, 1, 0, c_white, c_white, c_yellow, c_yellow, 1);
		draw_set_alpha(1.0);
	}
}