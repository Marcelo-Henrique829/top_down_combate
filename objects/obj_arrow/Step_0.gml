
if(place_meeting(x,y,global.tl_cercas))
{
	var _destroy = instance_create_layer(x,y,layer,obj_arrow_destroy)
	_destroy.image_angle = image_angle
	instance_destroy()
}
		
		
var _slime = instance_place(x, y, obj_slime); // detecta o slime específico que está colidindo
		
if(_slime!=noone)
{
	_slime.hit_arrow()
	var _juice = instance_create_layer(x,y,layer,obj_arrow_juice)
	_juice.image_angle = image_angle
	instance_destroy()
	_slime = 0
	
	
}
		
