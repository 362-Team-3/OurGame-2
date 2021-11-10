/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x,y,StageSelectPlayer))
{
	draw_sprite(textboxSprite, 0, 0, 600);
	draw_set_font(textFont);
	draw_set_colour(c_white);
	draw_text_ext(300, 650, text, textbox_sep, textbox_width);
}