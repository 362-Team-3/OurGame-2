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
if pause == true
    {
		alarm[0]++;
		alarm[1]++;
    }
}