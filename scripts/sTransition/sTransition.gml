// Generic script which will handle what room the program will go to from room to room

//takes a mode and room that it will transition to

with(Transition)
{
	type = argument[0];
	if(argument_count > 1) target = argument[1];
}
