/// @description Handles the drawing of the transition


//if transition mod is not off, creates the two squares which will movemtowards one another creating
//a transition
if(type != TRANSTYPE.OFF)
{
	draw_set_color(c_black);
	draw_rectangle(0,0,width,percent * middle, false);
	draw_rectangle(0,height,width,height-percent * middle,false);
}
