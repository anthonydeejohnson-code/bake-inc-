// Draw the mixer sprite first
draw_self();

draw_set_alpha(0.5);
draw_circle_colour(x, y, 32, c_white, c_white, true);
draw_circle_colour(x, y, 31.5, c_white, c_white, true);
draw_circle_colour(x, y, 31, c_white, c_white, true);
draw_circle_colour(x, y, 30.5, c_white, c_white, true);
draw_circle_colour(x, y, 30, c_white, c_white, true);
draw_set_alpha(1);


// Progress bars
if (place_meeting(x,y,o_player1))
{ draw_circle_colour(x, y, 32, c_red, c_red, true);
	draw_circle_colour(x, y, 31.5, c_red, c_red, true);
	draw_circle_colour(x, y, 31, c_red, c_red, true);
	draw_circle_colour(x, y, 30.5, c_red, c_red, true);
	draw_circle_colour(x, y, 30, c_red, c_red, true);
	player1_pickup = true;
}
if (player1_pickup) {
	
    var progress = player1_score / score_max;
    
    draw_rectangle_colour(o_player1.x - 20, o_player1.y - 40,
                   o_player1.x - 20 + (progress * 40),
                   o_player1.y - 32, c_red,c_red,c_red,c_red,false);
}

if (place_meeting(x, y, o_player2))
{
		draw_circle_colour(x, y, 32, c_blue, c_blue, true);
	draw_circle_colour(x, y, 31.5, c_blue, c_blue, true);
	draw_circle_colour(x, y, 31, c_blue, c_blue, true);
	draw_circle_colour(x, y, 30.5, c_blue, c_blue, true);
	draw_circle_colour(x, y, 30, c_blue, c_blue, true);
	player2_pickup = true;
}
if (player2_pickup) {

    var progress = player2_score / score_max;
    
    draw_rectangle_colour(o_player2.x - 20, o_player2.y - 40,
                   o_player2.x - 20 + (progress * 40),
                   o_player2.y - 32, c_blue,c_blue,c_blue,c_blue,false);
}
draw_self();

// Draw time left above trash
var seconds_left = ceil(trash_timer / room_speed);
draw_set_color(c_black);
draw_text(x, y - 32, string(seconds_left));
