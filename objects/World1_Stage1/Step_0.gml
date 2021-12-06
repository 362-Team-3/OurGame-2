/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x,y,StageSelectPlayer))
{
	if (textBoxLevel == noone)
	{
		textBoxLevel = instance_create_layer(256,416, "Textbox", TextBox_obj);
		textBoxLevel.text = "World 1 - Stage 1";
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