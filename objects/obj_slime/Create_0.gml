 /// @description Insert description here
// You can write your code in this editor
 
 
state = "iddle"
hspd =0
vspd =0
spd = 2
dir = 0 
dir_state = "none"
distance_seek = 300
vida = 10
damage = [obj_attack,obj_arrow]







anim_dir = function()
{
	
	
	
	
    if (dir >= 45 && dir < 135)
	{
        dir_state = "up";
    }
	else if (dir >= 135 && dir < 225)
	{
       dir_state = "left";
    }
	else if (dir >= 225 && dir < 315)
	{
       dir_state = "down";
    }
	else
	{
        dir_state = "right";
	}
    if (dir >= 45 && dir < 135)
	{
        dir_state = "up";
    }
	else if (dir >= 135 && dir < 225)
	{
       dir_state = "left";
    }
	else if (dir >= 225 && dir < 315)
	{
       dir_state = "down";
    }
	else
	{
        dir_state = "right";
	}
	
	
	
	
	
	switch(dir_state)
		{
			case "up":
				
				if(vspd!=0) sprite_index = spr_slime_up_run
				else sprite_index = spr_slime_up_iddle
			break;
			case "down":
			
				if(vspd!=0) sprite_index =spr_slime_down_run
				else sprite_index = spr_slime_down_iddle
			break;
			case "right":
			
				if(hspd!=0) sprite_index = spr_slime_right_run
				else sprite_index = spr_slime_right_iddle
			break;
			
			case "left":
				if(hspd!=0) sprite_index = spr_slime_left_run
				else sprite_index = spr_slime_left_iddle
			break;
		
		}         
}