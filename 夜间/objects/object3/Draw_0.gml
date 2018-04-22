
if device_mouse_check_button_pressed(0,mb_left)
   {

//show_debug_message(  part_particles_create(global.Sname,mouse_x,mouse_y,pc_part[num],100) )
part_emitter_region  (global.Sname , pc_emit[0], mouse_x-80, mouse_x+80, mouse_y-80, mouse_y+80, ps_shape_ellipse, ps_distr_gaussian);
show_debug_message(  part_emitter_stream(global.Sname,pc_emit[0], pc_part[num], -4))

   }


gml_release_mode(true)