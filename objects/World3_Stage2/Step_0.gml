/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x,y,StageSelectPlayer))
{
	if(textboxLevel == noone)
	{
		textboxLevel = instance_create_layer(x,y, "Textbox", Textbox);
		textboxLevel.text = "World 3 - Stage 2"
	}

}
else
{
	if(textboxLevel != noone)
	{
		instance_destroy(textboxLevel);
		textboxLevel = noone;
	}
}