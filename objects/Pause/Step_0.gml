if room == Room1
{
if keyboard_check_pressed(vk_escape)
    {
		pause = !pause;
		if pause == false
        {
			instance_activate_all();
			surface_free(pause_screen);
			pause_screen = -1;
        }
    }
	
//if pause == true
//    {
//		alarm[0]++;
//		alarm[1]++;
//   }

// Handles movement of pause menu
if(pauseMenuControl)
{
	//handles interaction if they press up
	if( keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W")))
	{
		pauseMenuCursor++;
		if (pauseMenuCursor >= pauseMenuItems)
		{
			pauseMenuCursor = 0;
		}
	}
	
	//handles interaction if they press up
	if(keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S")))
	{
		pauseMenuCursor--;
		if (pauseMenuCursor < 0 )
		{
			pauseMenuCursor = pauseMenuItems - 1;
		}
	}
	

	//handles interaction if they press enter
	if(keyboard_check_pressed(vk_enter))
	{
		pauseMenuCommit = pauseMenuCursor;
		pauseMenuControl = false;
	}
	
}

//Handles where menu goes based on which option was selected
if(pauseMenuCommit != -1)
{
	switch(pauseMenuCommit)
	{
		case 0: room_goto(LevelSelect); break;
		case 1:	
				pause = !pause;
				if pause == false
				{
					instance_activate_all(); 
					surface_free(pause_screen);
					//pause_screen = -1;
				} 
				//pause_screen = -1; 
				break;
		default: room_goto(Menu); break;
	}
}
}
