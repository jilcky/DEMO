

if (live_call()) return live_result;


if mouse_check_button(mb_left)
   {
  
   effect_create_above(ef_flare, mouse_x,mouse_y, 0, c_white);
   
      
pc_emit[0] = part_emitter_create(pc_part[num])

part_emitter_region  (pc_part[num], pc_emit[0], mouse_x-80, mouse_x+80, mouse_y-80, mouse_y+80, ps_shape_ellipse, ps_distr_gaussian);

part_emitter_stream(pc_part[num],pc_emit[0],pc_part[num],-4)
   }


draw_sprite_ext(a,0,1280/2,720,4,4,0,c_white,0.25)
draw_sprite_ext(Filre,image_index,1280/2,720,0.18,0.18,0,c_white,1)

if surface_exists(FUCKsurface)

{

surface_set_target(FUCKsurface);
draw_clear_alpha(c_black, 0.85);

gpu_set_blendmode(bm_subtract);


draw_sprite_ext(a,0,1280/2,720,6,6,0,c_white,1)
draw_sprite_ext(Filre,image_index,1280/2,720,0.18,0.18,0,c_white,0.75)


gpu_set_blendmode(bm_normal);



surface_reset_target();
draw_surface_ext(FUCKsurface, 0, 0, 1, 1, 0, c_white, 1);
}
else
{
FUCKsurface = surface_create(room_width , room_height  );
}

