/// @description First code to run in the entire game

instance_create_depth(0, 0, 0, obj_globals);
var game = instance_create_depth(0, 0, 0, obj_game);
game.controller = instance_create_depth(0, 0, 0, obj_controller);
game.controller.keybind = instance_create_depth(0, 0, 0, obj_keybind);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_black);

if (!file_exists(FN_SETTINGS))
{
	saveConfig(game);
}
else
{
	readConfig(game);
}

// Transition to next room after one second
alarm[1] = room_speed;