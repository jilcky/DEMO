

if (live_call()) return live_result;


if device_mouse_check_button_pressed(0,mb_left)
   {

  part_particles_create(pc_emit[0],mouse_x,mouse_y,pc_part[num],100) 

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

