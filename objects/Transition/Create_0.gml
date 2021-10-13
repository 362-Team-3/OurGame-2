/// Handles creation of transition effects

//get basics params of the screen
width = display_get_gui_width();
height = display_get_gui_height();
middle = height * .5;


enum TRANSTYPE
{
	OFF,
	NEXT,
	GOTO,
	RESTART,
	INTRO
}

type = TRANSTYPE.INTRO;
percent = 1;
target = room;