    /// @description Insert description here
// You can write your code in this editor


//image_xscale = 0.15
//image_yscale = 0.15

window_set_cursor(cr_none)
vida = 10
state = "iddle"
previous_state = "";


arco = 0;
def_cooldown_arrow = 30
cooldown_flecha = 0


#region movimentação
	hspd = 0;
	vspd = 0;
	spd = 0;
	dir = 0;
	dir_state = "none"
	def_spd = 5;
	last = vk_nokey
	inputs_bool = 1;

#endregion

#region dash state
	
	
	dash_def_spd = 10;
	dash_spd = 0; //velocidade do avanço
       

	dashing_def_time = 17; //tempo do avanço
	dashing_time = dashing_def_time;

	dash_def_cooldown = 60; //tempo de espera do avanço
	dash_cooldown = 0;



#endregion

#region run state

run_def_spd = def_spd * 2
run_spd = spd

#endregion

global.tl_cercas = layer_tilemap_get_id("Tile_fence")

#region condições dentro de métodos

	fall = function()
{
	if(place_meeting(x,y,obj_hole))
	{
		image_index = 0
		state = "fall"
		
	}
}

#endregion
	




