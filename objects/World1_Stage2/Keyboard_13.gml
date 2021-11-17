/// @description Ship Avatar on planet = enter stage
// You can write your code in this editor
if(place_meeting(x,y,StageSelectPlayer))
{
	audio_stop_all();
	room_goto(W1Stage2);
}