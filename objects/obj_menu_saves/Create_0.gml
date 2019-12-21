/// @description Menu which displays all saves

var game = instance_find(obj_game, 1);

menu = instance_create_depth(0, 0, 0, obj_menu);
menu.buttonsWidth = 2;
menu.buttonsHeight = game.saveMax;

var highlights = readHighlights(game.saveMax);
var spacing = room_height * 0.1;
var buttonX = room_width * 0.5;

for (var i = 0; i < game.saveMax; i++)
{
	menu.buttons[i, 0] = instance_create_depth(buttonX, spacing * (i + 1), 0, obj_button);
	menu.buttons[i, 0].text = highlights[i].name + " - " + string(highlights[i].playHours) + "h " + string(highlights[i].playMinutes) + "m";
}
menu.buttons[0, 0].active = true;

menu.controller = game.controller;
controller = game.controller;