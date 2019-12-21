/// @function transition(room, transitionId)
/// @description transitions to a room
/// @param {real} room The room to transition to
/// @param {real} transitionId The ID of the transition to use

var transObjName = 0;

if (argument[1] == undefined) argument[1] = TRANSITION.fade; 

switch(argument[1])
{
	case TRANSITION.fade: transObjName = obj_transition_fade; break;
}

var trans = instance_create_depth(0, 0, -1000, transObjName);
trans.destination = argument0;