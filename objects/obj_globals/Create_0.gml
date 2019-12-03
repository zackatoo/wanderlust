/// @description Initalizes global values

// Constants whose values never change are defined by macros because they don't need to be looked up at runtime
#macro TRANSITION_TIME 60;

// Variables which need to be accessed globally and changed at runtime are declared as globals


// Enums can't be defined as macros but are still constants
enum TRANSITION 
{
	fade
}