/// @function readHighlights(saveMax)
/// @description Reads all save highlights from file.
/// @param {real} saveMax The number of saves that exist
/// @return {array} Returns an array of all the obj_save_highlight 

var saveMax = argument0;
var highlights;

ini_open(FN_HIGHLIGHTS);

for (var i = 0; i < saveMax; i++)
{
	var saveString = "save" + string(i);
	highlights[i] = instance_create_depth(0, 0, 0, obj_save_highlight);
	
	highlights[i].name = ini_read_string(saveString, "name", "unnamed");
	highlights[i].playHours = ini_read_real(saveString, "playHours", 0);
	highlights[i].playMinutes = ini_read_real(saveString, "playMinutes", 0);
	highlights[i].deleted = ini_read_real(saveString, "deleted", false);
}

ini_close();

return highlights;