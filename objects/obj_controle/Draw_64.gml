
var _camera_w = Obj_camera.resolution_width
var _camera_h = Obj_camera.resolution_height


draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_set_font(fnt_font_pontos)
draw_set_color(color)
  
	draw_text_ext_transformed(_camera_w/10,_camera_h-_camera_h/2,global.pontos,3,300,fnt_scale,fnt_scale,0)


draw_set_color(-1)
draw_set_halign(-1)
draw_set_valign(-1)
draw_set_font(-1)
