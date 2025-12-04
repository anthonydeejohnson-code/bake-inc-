draw_self();
draw_set_alpha(.5);
draw_circle_colour(x, y, 32, c_white, c_white, true);
draw_circle_colour(x, y, 31.5, c_white, c_white, true);
draw_circle_colour(x, y, 31, c_white, c_white, true);
draw_circle_colour(x, y, 30.5, c_white, c_white, true);
draw_circle_colour(x, y, 30, c_white, c_white, true);

if (player1_use)
{
	draw_circle_colour(x, y, 32, c_red, c_red, true);
	draw_circle_colour(x, y, 31.5, c_red, c_red, true);
	draw_circle_colour(x, y, 31, c_red, c_red, true);
	draw_circle_colour(x, y, 30.5, c_red, c_red, true);
	draw_circle_colour(x, y, 30, c_red, c_red, true);
}

if (player2_use)
{
	draw_circle_colour(x, y, 32, c_blue, c_blue, true);
	draw_circle_colour(x, y, 31.5, c_blue, c_blue, true);
	draw_circle_colour(x, y, 31, c_blue, c_blue, true);
	draw_circle_colour(x, y, 30.5, c_blue, c_blue, true);
	draw_circle_colour(x, y, 30, c_blue, c_blue, true);
} 
if (taking_order1) && (player1_use)
{
	draw_healthbar(o_player1.x - 16, o_player1.y - 38,o_player1.x +16,o_player1.y-34, time1,c_black, c_white, c_white, 0, false, true);
}
if (taking_order2) && (player2_use)
{
	draw_healthbar(o_player2.x - 16, o_player2.y - 38,o_player2.x +16,o_player2.y-34, time2,c_black, c_white, c_white, 0, false, true);
}