	if (done == 0)
	{
	vsp = vsp + grv;

	//Horiziontal Collision
	if (place_meeting(x+hsp,y,obj_wall))
	{
		while (!place_meeting(x+sign(hsp),y,obj_wall))
		{
			x = x + sign(hsp);
		}
		hsp = 0;
	}
	x = x + hsp;

	//Vertical collision.
	if (place_meeting(x,y+vsp,obj_wall))
	{
		if (vsp > 0) 
		{
			done = 1;
		}
		while (!place_meeting(x,y+sign(vsp),obj_wall))
		{
			y = y + sign(vsp);
		}
		vsp = 0;
	}
	y = y + vsp;
	}