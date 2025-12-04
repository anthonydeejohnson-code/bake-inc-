draw_set_color(c_black);
draw_set_alpha(.4);
draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), false);
draw_set_alpha(1);
// Menu text
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);

draw_text(display_get_gui_width()/2, display_get_gui_height()/2 - 40, "PAUSED");
draw_text(display_get_gui_width()/2, display_get_gui_height()/2 + 0, "[ESC] to Resume");
draw_text(display_get_gui_width()/2, display_get_gui_height()/2 + 20, "[F] to Toggle Fullscreen");
draw_text(display_get_gui_width()/2, display_get_gui_height()/2 + 40, "[H] to Help");
draw_text(display_get_gui_width()/2, display_get_gui_height()/2 + 60, "[M] to Return to Menu");
draw_text(display_get_gui_width()/2, display_get_gui_height()/2 + 80, "[Q] to Quit Game");


