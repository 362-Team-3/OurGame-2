/// @description Draws Health bar
draw_sprite_stretched(PlayerHealthBar_BG,0,healthbar_x,healthbar_y,healthbar_width,healthbar_height);
draw_sprite_stretched(PlayerHealthBar,0,healthbar_x,healthbar_y,(Health/maxHealth) * healthbar_width,healthbar_height);

