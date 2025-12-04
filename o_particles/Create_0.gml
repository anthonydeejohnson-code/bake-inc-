// Create the particle system
ps = part_system_create();
part_system_depth(ps, -100); // Draw above everything

// Create particle type
pt_heart = part_type_create();
pt_grr = part_type_create();

// Use your custom sprite (replace spr_heart with your sprite)
part_type_sprite(pt_heart, s_correct, false, false, false);
part_type_sprite(pt_grr, s_wrong, false, false, false);

// Particle behavior settings
part_type_size(pt_heart, 0.3, 0.7, 0, 0);
part_type_scale(pt_heart, 1, 1);
part_type_alpha2(pt_heart, 1, 0);
part_type_color1(pt_heart, c_white);

part_type_direction(pt_heart, 80, 100, 0, 0);
part_type_speed(pt_heart, 0.3, 0.7, 0, 0);
part_type_gravity(pt_heart, -0.05, 90);   // float upward
part_type_life(pt_heart, 25, 40);


// Use your custom sprite (replace spr_heart with your sprite)
part_type_sprite(pt_grr, s_correct, false, false, false);

// Particle behavior settings
part_type_size(pt_grr, 0.3, 0.7, 0, 0);
part_type_scale(pt_grr, 1, 1);
part_type_alpha2(pt_grr, 1, 0);
part_type_color1(pt_grr, c_white);

part_type_direction(pt_grr, 80, 100, 0, 0);
part_type_speed(pt_grr, 0.3, 0.7, 0, 0);
part_type_gravity(pt_grr, -0.05, 90);   // float upward
part_type_life(pt_grr, 25, 40);