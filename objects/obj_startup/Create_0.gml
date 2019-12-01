/// @description First code to run in the entire game

instance_create_depth(0, 0, 0, obj_globals);

// Transition to next room after one second
alarm[0] = room_speed;