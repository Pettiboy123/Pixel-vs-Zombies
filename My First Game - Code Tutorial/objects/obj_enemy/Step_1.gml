if (hp <= 0)
{
	with (instance_create_layer(x,y,layer,obj_enemyD))
	{
		direction = other.hitfrom;
		hsp = lengthdir_x(3,direction);
		hsp = lengthdir_y(3,direction)-2;
		image_xscale = sign(hsp);
		if (sign(hsp) !=0) image_xscale = sign(hsp);
	}
	
	
	instance_destroy();	
}