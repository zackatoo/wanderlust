/// @description 

var game = instance_find(obj_game, 1);

menu = instance_create_depth(0, 0, 0, obj_menu);
menu.buttonsWidth = 3;

var partition = room_width / 7;
var buttonY = room_height * 0.8;
menu.buttons[0, 0] = instance_create_depth(partition, buttonY, 0, obj_button);
menu.buttons[0, 0].active = true;
menu.buttons[0, 0].text = "Play";

menu.buttons[0, 1] = instance_create_depth(partition * 3, buttonY, 0, obj_button);
menu.buttons[0, 1].text = "Options";

menu.buttons[0, 2] = instance_create_depth(partition * 5, buttonY, 0, obj_button);
menu.buttons[0, 2].text = "Exit";

menu.controller = game.controller;
controller = game.controller;