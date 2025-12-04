if (instance_exists(o_pause)) exit;
if (!used)
{
	if (place_meeting(x,y, o_player2))
	{
		player2_use = true;	
		used= true
		player1_use = false;
		taking_order2= true;
	}else if(place_meeting(x,y, o_player1))
	{
		player1_use = true;
		player2_use = false;
		used = true
		taking_order1= true;
	}  
}else {
	if (!place_meeting(x,y, o_player1) && (!place_meeting(x,y, o_player2)))
	{
		used = false;
		player1_use = false;
		player2_use = false;
	}
} var cust = instance_place(x,y,o_customer)
if (player1_use) && cust
{ 
if (time1< time_max)
		{
			time1+= time_tick;
			if (time1> time_max)
				{
					time1= time_max;
				}
				draw_healthbar(o_player1.x - 16, o_player1.y - 38,o_player1.x +16,o_player1.y-34, time1,c_black, c_white, c_white, 0, false, true);
				cust.order_taken = true;
				cust.moving_too = "checkout";
		} time1 = 0;
}
if (player2_use) && cust
{
if (time2< time_max)
		{
			time2+= time_tick;
			if (time2> time_max)
				{
					time2= time_max;
				}
				draw_healthbar(o_player2.x - 16, o_player2.y - 38,o_player2.x +16,o_player2.y-34, time2,c_black, c_white, c_white, 0, false, true);
				cust.order_taken = true;
				
				cust.moving_too = "checkout";
		} time2 = 0;
}

	