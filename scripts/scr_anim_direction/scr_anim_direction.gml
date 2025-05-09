   // Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_anim_direction(){
	
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
				
				if(vspd!=0) sprite_index = spr_player_up_run
				else sprite_index = spr_player_up_iddle
			break;
			case "down":
				if(vspd!=0) sprite_index = spr_player_down_run
				else sprite_index = spr_player_down_iddle
			break;
			case "right":
				if(hspd!=0) sprite_index = spr_player_right_run
				else sprite_index = spr_player_right_iddle
			break;
			case "left":
				if(hspd!=0) sprite_index = spr_player_left_run
				else sprite_index = spr_player_left_iddle
			break;
		
		}
		
		show_debug_message(dir_state)
		show_debug_message(dir)


}
function scr_anim_direction_attack(){
	
	    if (dir >= 45 && dir <=135)
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
				
				 sprite_index = spr_player_up_attack
			break;
			case "down":
				 sprite_index = spr_player_down_attack
				
			break;
			case "right":
				sprite_index = spr_player_right_attack
				
			break;
			case "left":
				sprite_index = spr_player_left_attack
				
			break;
		
		}
		
		show_debug_message(dir_state)


}