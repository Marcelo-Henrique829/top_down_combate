/// @description Insert description here
// You can write your code in this editor
scr_colision([obj_wall,global.tl_cercas])

var _player_localization = point_direction(x,y,obj_player.x,obj_player.y)
dir = point_direction(0,0,sign(hspd),sign(vspd))

var _distancia = point_distance(x,y,obj_player.x,obj_player.y)

if(place_meeting(x,y,damage) and state!="dead" and state != "hit")
{
	state = "hit"
	image_index = 0;
	vida -= 1
}

if(vida<=0)
{
	state = "dead"
	image_index = 0;
	vida = 1
}




  switch(state)
{
	case "iddle":
	{
		anim_dir()
		if(_distancia<=distance_seek)
		{
			state = "seek"
		}
		
		hspd = 0;
		vspd = 0;
		
	}
	break;
	
	case "seek":
	{
		anim_dir()
		hspd = lengthdir_x(spd,_player_localization)
		vspd = lengthdir_y(spd,_player_localization)
		
		if(_distancia>=distance_seek)
		{
			state = "iddle"
		}
	}
	break;
	
	case "hit":
	{
		global.shake = 5
		var _dir_player = obj_player.dir
		sprite_index = spr_slime_hurt
		hspd = lengthdir_x(5,_dir_player)
		vspd = lengthdir_y(5,_dir_player)
		if(image_index>=image_number-1)
		{
				state = "iddle"	
		}
	}
	break;
	
	case "dead" :
	{
		sprite_index = spr_slime_destroy
		hspd = 0
		vspd = 0
		if(image_index>=image_number-1)
		{
			instance_destroy()	
		}
 		 
		
	}
	break;
}

 show_debug_message(state)

