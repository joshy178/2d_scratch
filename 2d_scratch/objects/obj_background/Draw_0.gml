/// @description Insert description here
// You can write your code in this editor






var _camera = view_camera[ 0 ]

x = camera_get_view_x( _camera )
//jms todo change from 2
//image_xscale = 2
y = camera_get_view_y( _camera )
//image_yscale = 2


draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,1)
//draw_sprite_tiled_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,c_white,1)
//draw_sprite_tiled