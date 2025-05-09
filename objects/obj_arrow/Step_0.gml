
switch(state)
{
	
	case "iddle":
	{
		if(place_meeting(x,y,global.tl_cercas))
		{
			state = "destroy"
			image_index = 0
		}
		
		if(place_meeting(x,y,obj_slime))
		{
			state = "hit"
			image_index = 0
		}
		
	}
	break;
	
	case "destroy":
	{
		sprite_index = spr_arrow_destroy
		speed = 0
		
		if(image_index>= image_number-1)
		{
			instance_destroy()
		}
		
	}
	break;
	case "hit":
	{
		sprite_index = spr_arrow_hit
		speed = 0
		if(image_index>= image_number-1)
		{
			image_index = 0
			state = "destroy"
		}
		
	}
	break;
	
}