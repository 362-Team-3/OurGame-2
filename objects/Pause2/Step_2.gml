/// @description Insert description here
// You can write your code in this editor

if(keyboard_check_pressed(vk_escape))
{
	global.gamePaused = !global.gamePaused;
	
	if(global.gamePaused)
	{
		instance_deactivate_all(true);
	}
	else if(!global.gamePaused)
	{
		instance_activate_all();	
	}
	
}

if(global.gamePaused)
{
	UP_PAUSE = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));
	DOWN_PAUSE = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"));
	
	HOVER_PAUSE += (UP_PAUSE - DOWN_PAUSE);
	if(HOVER_PAUSE >= array_length(pauseOption))
	{
		HOVER_PAUSE = 0;
	}
	if(HOVER_PAUSE < 0)
	{
		HOVER_PAUSE = array_length(pauseOption) - 1;
	}
	
	SELECT_PAUSE = keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space);
	if(SELECT_PAUSE)
	{
		switch(HOVER_PAUSE)
		{
			case 0: //Continue
			{
				global.gamePaused = false;
				instance_activate_all();
			}break;
			case 1: //Exit
			{
				room_goto(LevelSelect);
			}break;
		}
	}
}