/// @function saveHighlights(saveMax, highlightsArray)
/// @description Writes all save highlights to file
/// @param {real} saveMax the number of saves that exist
/// @param {array} highlightsArray an array of obj_save_highlights to write to file

var saveMax = argument0;
var highlights = argument1;

ini_open(FN_HIGHLIGHTS);

for (var i = 0; i < saveMax; i++)
{
	var saveString = "save" + string(i);
	ini_write_string(saveString, "name", highlights[i].name);
	ini_write_real(saveString, "playHours", highlights[i].playHours);
	ini_write_real(saveString, "playMinutes", highlights[i].playMinutes);
	ini_write_real(saveString, "deleted", highlights[i].deleted);
	
}

ini_close();