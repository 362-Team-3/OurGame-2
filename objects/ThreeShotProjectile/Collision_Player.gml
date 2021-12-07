with(other) 
{
	if (Color != "red") 
	{
	Health -= 10
	}
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