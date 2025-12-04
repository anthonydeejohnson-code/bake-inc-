draw_self();
if (waiting_for_order)
{
	draw_set_alpha(.7);
    draw_sprite(order_sprite, 0, x + order_offset_x, y);
}
// Draw timer above head
var display_time = max(0, floor(timer));

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);
draw_text(x, y + timer_offset_y, string(display_time));

