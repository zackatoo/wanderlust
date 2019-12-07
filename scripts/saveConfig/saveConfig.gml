/// @function saveConfig(game)
/// @description Writes configuration to file
/// @param {real} game The game object for writing

var game = argument0;
ini_open(FN_SETTINGS);
ini_write_real("saves", "savemax", game.saveMax);

ini_close();