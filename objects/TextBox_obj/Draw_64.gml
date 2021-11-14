/// @description Insert description here
// You can write your code in this editor
	sprite_y = 0; sprite_x = 0;
	draw_sprite(textboxSprite, 0, sprite_x, sprite_y);
	draw_set_font(textFont);
	draw_set_colour(c_white);
	draw_text_ext(sprite_x + 250, sprite_y + 100, text, textbox_sep, textbox_width);