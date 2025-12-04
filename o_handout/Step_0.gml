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
}
if ((player1_use) && instance_place(x,y,o_customer))
{
if (o_player1.held_item != noone)
{
    var cust = instance_place(x, y, o_customer);

    if (cust != noone)
    {
        // Customer must be waiting
        if (cust.waiting_for_order)
        {
            // Compare the held item sprite to the customer’s order sprite
            if (o_player1.held_item.sprite_index == cust.order_sprite)
            {
                // --- CORRECT ORDER ---
				audio_play_sound(correct, 1, false);
                global.cash += 10; // reward
                cust.waiting_for_order = false;
				var pCtrl = instance_find(o_particles, 0);

			if (pCtrl != noone) {
			 part_particles_create(pCtrl.ps, cust.x, cust.y - 8, pCtrl.pt_heart, 25);
			// Delete the item
                with (o_player1.held_item) instance_destroy();

                o_player1.held_item = noone;
				instance_destroy(cust);
            }
            else
            {
                cust.waiting_for_order = false; 
                 // penalty
				
			var pCtrl = instance_find(o_particles, 0);

			if (pCtrl != noone) {
			 part_particles_create(pCtrl.ps, cust.x, cust.y - 8, pCtrl.pt_grr, 25);
                with (o_player1.held_item) instance_destroy();
                o_player1.held_item = noone;
				instance_destroy(cust);
            }
        }
    }
}
	}
}
}
      
	if (time1< time_max)
		{
			time1+= time_tick;
			if (time1> time_max)
				{
					time1= time_max;
				}
				draw_healthbar(o_player1.x - 16, o_player1.y - 38,o_player1.x +16,o_player1.y-34, time1,c_black, c_white, c_white, 0, false, true);
		}



if ((player2_use) && instance_place(x,y,o_customer))
{
if (o_player2.held_item != noone)
{
    var cust = instance_place(x, y, o_customer);

    if (cust != noone)
    {
        // Customer must be waiting
        if (cust.waiting_for_order)
        {
            // Compare the held item sprite to the customer’s order sprite
            if (o_player2.held_item.sprite_index == cust.order_sprite)
            {
                // --- CORRECT ORDER ---
                global.cash += 10; // reward
                cust.waiting_for_order = false;
				var pCtrl = instance_find(o_particles, 0);

			if (pCtrl != noone) {
			 part_particles_create(pCtrl.ps, cust.x, cust.y - 8, pCtrl.pt_heart, 25);
			// Delete the item
                with (o_player2.held_item) instance_destroy();

                o_player2.held_item = noone;
				instance_destroy(cust);
            }
            else
            {
                cust.waiting_for_order = false;
                 // penalty
			var pCtrl = instance_find(o_particles, 0);

			if (pCtrl != noone) {
			 part_particles_create(pCtrl.ps, cust.x, cust.y - 8, pCtrl.pt_grr, 25);
                with (o_player2.held_item) instance_destroy();
                o_player2.held_item = noone;
				instance_destroy(cust);
            }
        }
    }
}
	}
}
}
{
if (time2< time_max)
		{
			time2+= time_tick;
			if (time2> time_max)
				{
					time2= time_max;
				}
				draw_healthbar(o_player2.x - 16, o_player2.y - 38,o_player2.x +16,o_player2.y-34, time2,c_black, c_white, c_white, 0, false, true);
		}
}	