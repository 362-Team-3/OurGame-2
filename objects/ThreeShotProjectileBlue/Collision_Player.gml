/// @description Insert description here
// You can write your code in this editor
with(other) {
	if (Color != "blue") Health -= 10;
		else 
	{
		if(Health >=(maxHealth - 5) && Health <= maxHealth)
		{
			Health = maxHealth;
		}
		else
		{
			Health += 5;
		}
		
	}
}



instance_destroy();