/// @description Draw text

// Gamemaker doesn't draw the sprite if you make a draw event, so we need to do it manually
draw_sprite(sprite_index, image_index, x, y);

draw_set_font(font);
draw_text(x, y, text);