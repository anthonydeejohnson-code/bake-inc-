draw_set_color(c_white);
draw_text(20, 20, "Day: " + string(current_cycle == 0));
draw_text(20, 40, "Time Left: " + string(alarm[0] div 60));

