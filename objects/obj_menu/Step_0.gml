/// @description Update active button via user

if (controller.pressUp)
{
	buttons[activeRow, activeCol].active = false;
	activeRow--;
	if (active < 0)
	{
		if (wrapAroundVert)
		{
			activeRow = buttonsHeight - 1;
		}
		else
		{
			activeRow = 0;
		}
	}
	buttons[activeRow, activeCol].active = true;
}
else if (controller.pressDown)
{
	buttons[activeRow, activeCol].active = false;
	activeRow++;
	if (activeRow == buttonsHeight)
	{
		if (wrapAroundVert)
		{
			activeRow = 0;
		}
		else
		{
			activeRow = buttonsHeight - 1;
		}
	}
	buttons[activeRow, activeCol].active = true;
}

if (controller.pressLeft)
{
	buttons[activeRow, activeCol].active = false;
	activeCol--;
	if (activeCol < 0)
	{
		if (wrapAroundHorz)
		{
			activeCol = buttonsWidth - 1;
		}
		else
		{
			activeCol = 0;
		}
	}
	buttons[activeRow, activeCol].active = true;
}
else if (controller.pressRight)
{
	buttons[activeRow, activeCol].active = false;
	activeCol++;
	if (activeCol == buttonsWidth)
	{
		if (wrapAroundVert)
		{
			activeCol = 0;
		}
		else
		{
			activeCol = buttonsWidth - 1;
		}
	}
	buttons[activeRow, activeCol].active = true;
}