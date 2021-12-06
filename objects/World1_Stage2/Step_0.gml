/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x,y,StageSelectPlayer))
{
	if (textBoxLevel == noone)
	{
		textBoxLevel = instance_create_layer(x,y, "Textbox", TextBox_obj);
		textBoxLevel.text = "World 1 - Stage 2";
	}
}
else
{
	if (textBoxLevel != noone)
	{
		instance_destroy(textBoxLevel);
		textBoxLevel = noone;
	}
}