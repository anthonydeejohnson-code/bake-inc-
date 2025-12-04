if (instance_exists(o_pause)) exit;
var bowl = instance_place(x+8, y, o_bowl);
var friuts = (!place_meeting(x+8, y, o_strawberry) && !place_meeting(x+8, y, o_blueberry) && !place_meeting(x+8, y, o_peach))
var cakes = (!place_meeting(x+8, y, o_cake_straw) && !place_meeting(x+8, y, o_cake_blue) && !place_meeting(x+8,y,o_cake_peach))
if (!used)
{
	if (place_meeting(x,y, o_player2))
	{
		player2_use = true;	
		used= true
		player1_use = false;
		
		
	}else if	(place_meeting(x,y, o_player1))
	{
		player1_use = true;
		player2_use = false;
		used = true	
	} 
} else {
	if (!place_meeting(x,y, o_player1) && (!place_meeting(x,y, o_player2)))
	{
		used = false;
		player1_use = false;
		player2_use = false;
	}
}

if (player2_use && bowl != noone && sprite_index = s_oven_open  && !place_meeting(x+8, y, o_dough_cooked) && friuts && cakes)
{
	if (time2 < time_max)
		{
			time2 += time_tick;
			if (time2 > time_max)
				{
					time2 = time_max;
				}
				draw_healthbar(o_player2.x - 16, o_player2.y - 38,o_player2.x +16,o_player2.y-34, time2,c_black, c_white, c_white, 0, false, true);
		}
			if (time2 = time_max)
		{
			instance_destroy(bowl);
			sprite_index = s_oven_closed;
		}
		
}
if (player1_use && bowl != noone  && sprite_index == s_oven_open && !place_meeting(x+8, y, o_dough_cooked) && friuts && cakes)
{
	if (time1 < time_max)
		{
			time1 += time_tick;
			if (time1 > time_max)
				{
					time1 = time_max;
				}
				draw_healthbar(o_player1.x - 16, o_player1.y - 38,o_player1.x +16,o_player1.y-34, time1,c_black, c_white, c_white, 0, false, true);
		}
		if (time1 = time_max)
		{
			instance_destroy(bowl)
			sprite_index = s_oven_closed;
		}
}
if (sprite_index = s_oven_closed)
{ 
		if (cook_time < cook_time_max)
		{
			cook_time +=cook_efficiency;
			if (cook_time >cook_time_max)
				{
					cook_time=cook_time_max;
				}
		}

	draw_healthbar(x-16,y-40,x+16,y-34 ,cook_time,c_black, c_white,c_green,0,false,true);
}
if (cook_time = cook_time_max)
{
	sprite_index = s_oven_open;
	instance_create_layer(x+16,y-16,"Holding", o_dough_cooked);
	cook_time = 0;
}
