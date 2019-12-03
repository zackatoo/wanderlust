/// @description Draw black overlay

// clamp makes sure alpha is between 0 and 1
alpha = clamp(alpha + fade * alphaDelta, 0, 1);

if (alpha == 1)
{
	room_goto(destination);
	fade = -1;
}

if (alpha == 0 && fade == -1)
{
	instance_destroy();
}

draw_set_color(c_black);
draw_set_alpha(alpha);
draw_rectangle(0, 0, room_width, room_height, 0);
draw_set_alpha(1);