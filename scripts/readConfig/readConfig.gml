/// @function readConfig(game)
/// @description Reads configuration from file
/// @param {real} game The game object for reading

game = argument0;
ini_open(FN_SETTINGS);
game.saveMax = ini_read_real("saves", "savemax", game.saveMax);

ini_close();