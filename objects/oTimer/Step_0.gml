/// @description Insert description here
// You can write your code in this editor
--timer;


if(instruct != 0)
{
	--instruct;
}

if(timer <= 0)
{
	timer = 60;
	counter--;
	
	//ADD CODE TO CHANGE DISPLAY TIME
}

if(counter == 0)
{
	//ADD CODE TO SYMBOLIZE STAGE HAS BEEN COMPLETE
	
	counter = -1;
	instance_destroy(EnemySpawner)
	
	if(W3Stage1)
	{
		instance_destroy(EnemySpawnerW3_1)
	}
	if(W3Stage2)
	{
		instance_destroy(EnemySpawnerW3_2)
	}
}






