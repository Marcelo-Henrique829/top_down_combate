/// @description Insert description here
// You can write your code in this editor


r = (r + 1) % 256;
g = (g + 2) % 256;
b = (b + 3) % 256;



if(score_pontos != global.pontos)
{
	fnt_scale = lerp(fnt_scale,5,0.1)
	color = make_color_rgb(r, g, b);
	if(fnt_scale>= 4.5) score_pontos = global.pontos 
}
else
{
	fnt_scale = lerp(fnt_scale,1,0.1)
	color = c_black
}

