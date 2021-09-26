pause = false;
pause_screen = -1;

//Basic Params of the GUI 
guiWidth = display_get_gui_width();
guiHeight = display_get_gui_height()+400;
guiMargin = 50;

//X and Y coords of menu
pauseMenuX = guiWidth;
pauseMenuY = guiHeight - guiMargin;

//
pauseMenuHeight = font_get_size(titleFont);
pauseMenuCommit = -1;
pauseMenuControl = true;
pauseMenuCursor = 2;

//
pauseMenu[0] = "EXIT";
pauseMenu[1] = "UNPAUSE";

pauseMenuItems = array_length(pauseMenu);