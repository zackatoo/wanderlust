/// @description Initalizes global values

// Constants whose values never change are defined by macros because they don't need to be looked up at runtime
// No not end with semi-colons
#macro TRANSITION_TIME 60
#macro FN_SETTINGS "settings.ini"

// Variables which need to be accessed globally and changed at runtime are declared as globals


// Enums can't be defined as macros but are still constants
enum TRANSITION 
{
	fade
}