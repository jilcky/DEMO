
show_debug_message("创建")


num = 0
pc_part[num] = part_type_create();
part_type_sprite     (pc_part[num], sprite3, false, false, false);
part_type_life       (pc_part[num], 25, 55);
part_type_direction  (pc_part[num], 135, 45, 0, 0.50);
part_type_orientation(pc_part[num], 90, 90, 0, 0, 0);
part_type_speed      (pc_part[num], 0.06, 0, 0, 0);
part_type_size       (pc_part[num], 0.10, 1, 0.01, 0);
part_type_alpha3     (pc_part[num], 0.90, 0.99, 0);
part_type_colour3    (pc_part[num], make_colour_rgb(223, 113, 38), make_colour_rgb(172, 50, 50), make_colour_rgb(118, 66, 138));
part_type_blend      (pc_part[num], 1);
part_type_gravity    (pc_part[num], 0.03, 85);
	   
pc_emit[0] = part_emitter_create(pc_part[num])
global.Sname = part_system_create();

pc_emit[0] = part_emitter_create(pc_part[num])
part_emitter_region  (global.Sname , pc_emit[0], mouse_x-80, mouse_x+80, mouse_y-80, mouse_y+80, ps_shape_ellipse, ps_distr_gaussian);