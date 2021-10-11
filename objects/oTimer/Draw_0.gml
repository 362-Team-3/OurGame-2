/// @description Insert description here
// You can write your code in this editor
draw_set_alpha(1.0);
draw_set_color(c_yellow);
draw_set_font(timerFont);
draw_set_halign(fa_center);
draw_set_valign(fa_top);


if(instruct != 0)
{
	draw_text_transformed_colour(room_width / 2, room_height / 3, "Survive until time runs out!", 3, 3, 0, c_white, c_white, c_yellow, c_yellow, 1);
}


if(counter < 10 && counter > 0)
{
	//draw_text(x,y, "0" + string(counter));
	draw_text_transformed_colour(room_width / 2, room_height / 10, "0" + string(counter), 3, 3, 0, c_white, c_white, c_yellow, c_yellow, 1);
}
else if(counter <= 0)
{
	//Handle end stage portion
	draw_text_transformed_colour(room_width / 2, room_height / 3, "YOU WIN", 3, 3, 0, c_white, c_white, c_yellow, c_yellow, 1);
}
else
{
	//draw_text(x,y, string(counter));
	draw_text_transformed_colour(room_width / 2, room_height / 10,string(counter), 3, 3, 0, c_white, c_white, c_yellow, c_yellow, 1);
}