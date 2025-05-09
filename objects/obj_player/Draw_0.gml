/// @description Insert description here
// You can write your code in this editor

draw_self()
//// Coordenadas do centro do círculo


//// Raio do círculo
//var _raio = 12;


//draw_set_valign(1)
//draw_set_halign(1)

//draw_text(x,y - sprite_height,state)

//draw_set_valign(-1)
//draw_set_halign(-1)


switch(state)
{
	case "attack" :
	{
		if(image_index = 1)
		{
			switch(dir_state)
			{
				case "up":
				{
					
					instance_create_layer(x,y,layer,obj_attack)
					
				}
				break;
				case "right":
				{
					instance_create_layer(x+10,y+10,layer,obj_attack)
					
				}
				break;
				case "left":
				{
					instance_create_layer(x-10,y+10,layer,obj_attack)
					
				}
				break;
				case "down":
				{
					instance_create_layer(x,y+20,layer,obj_attack)
					
				}
				break;
			}
		}
		else
		{
			instance_destroy(obj_attack)
		}
	}
	break;
}


			





