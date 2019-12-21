/// @description Handle user selection

if (controller.pressEnter)
{
	switch (menu.activeCol)
	{
		case 0: transition(rm_saves);
		case 1: transition(rm_options);
		case 2: game_end();
	}
}