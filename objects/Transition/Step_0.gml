/// Handles when a transition is necessary


//checks to make sure whether or not transition is off, if not, handles transition effect
if(type != TRANSTYPE.OFF)
{
	if(type == TRANSTYPE.INTRO)
	{
		percent = max(0,percent - max((percent/10),.005));
	}
	else
	{
		percent = min(1,percent + max(((1 - percent)/10), .005));
	}
	
	
	//handles each type of situation where a transition is needed
	if(percent == 1) || (percent == 0)
	{
		switch(type)
		{

			case TRANSTYPE.NEXT:
			{
				type = TRANSTYPE.INTRO;
				room_goto_next();
				break;	
			}
		
			case TRANSTYPE.GOTO:
			{
				type = TRANSTYPE.INTRO;
				room_goto(target);
				break;	
			}
			
			case TRANSTYPE.RESTART:
			{
				game_restart();
				break;	
			}
			
			case TRANSTYPE.INTRO:
			{
				type = TRANSTYPE.OFF;
				break;	
			}
		
		}
	}
	
}