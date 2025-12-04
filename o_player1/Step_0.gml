if (instance_exists(o_pause)) exit;
if (can_move)
{
	if (keyboard_check(ord("A")))
	{ 
		moving = true;
		facing = "left";
		if (!place_meeting(x - movespeed, y, o_barrier)) 
		{
			x = x - movespeed;
		}
	} 
	else if (keyboard_check(ord("D")))
	{
		moving = true;
		facing = "right";
		if (!place_meeting(x + movespeed, y, o_barrier)) 
		{
			
			 x = x + movespeed;
		}
	} 
	else if(keyboard_check(ord("W"))) 
	{
		moving = true;
		facing = "up";
		if (!place_meeting(x, y -movespeed, o_barrier)) 
		{
			y = y - movespeed;
		}
	}
	else if (keyboard_check(ord("S"))) 
	{
		moving = true;
		facing = "down";
		if (!place_meeting(x , y+ movespeed, o_barrier)) 
		{
			y = y + movespeed;
		}
	} else {
		moving = false;
		
	}
}
if (moving)
	{ 
		if (!audio_is_playing(Mr_Krabs_Walking_Noise_Sound_Effect)) {
		audio_play_sound(Mr_Krabs_Walking_Noise_Sound_Effect, 50, true)
		}
		switch (facing)
		{
		case "left": sprite_index = s_player1_left;break;
		case "right": sprite_index = s_player1_right;break;
		case "down": sprite_index = s_player1_down;break;
		case "up": sprite_index = s_player1_up;break;
		}
	} 
if (!moving)
	{
		
		audio_stop_sound(Mr_Krabs_Walking_Noise_Sound_Effect);
		
		switch (facing)
		{
		case "left": sprite_index = s_player1_idle_left;break;
		case "right": sprite_index = s_player1_idle_right;break;
		case "down": sprite_index = s_player1_idle_down;break;
		case "up": sprite_index = s_player1_idle_up;break;
		}
	}
	
if (!place_meeting(x,y,o_trash))
{
// Check touch with another player
var p = instance_place(x, y, o_player2);

if (p != noone && p != id) {

    // Player A wants to steal from Player B:
    // CONDITIONS:
    // - A must NOT already be holding something
    // - B must BE holding something

    if (held_item == noone && p.held_item != noone) {

        // Transfer item
        held_item = p.held_item;
        p.held_item = noone;

        // Snap item to the new holder
        held_item.owner = id;
        held_item.x = x;
        held_item.y = y;
    }
}

// --- Player Step Event ---

// STEALING / TRANSFER SYSTEM
var p = instance_place(x, y, o_player2);

if (p != noone && p != id) {

    // This player must NOT be holding anything
    // The other player MUST be holding something
    if (held_item == noone && p.held_item != noone) {

        held_item = p.held_item;
        p.held_item = noone;

        // Update transferred item
        held_item.owner = id;
        held_item.x = x;
        held_item.y = y;
    }
}
}


if (place_meeting(x, y, o_blueberry) or place_meeting(x, y, o_bowl) or place_meeting(x, y, o_cake_blue) 
or place_meeting(x, y, o_cake_peach) or place_meeting(x, y, o_cake_straw) or
place_meeting(x, y, o_dough) or place_meeting(x, y, o_dough_cooked) or place_meeting(x, y, o_peach) 
or place_meeting(x, y, o_strawberry))
{
	can_hold = false;
	holding = true;
} else {
	can_hold = true;
	holding = false;
}
if (instance_place(x,y,o_strawberry))
{
held_item = o_strawberry;
} else
if (instance_place(x,y,o_blueberry))
{
held_item = o_blueberry;
} else
if (instance_place(x,y,o_peach))
{
held_item = o_peach;
} else
if (instance_place(x,y,o_dough_cooked))
{
held_item = o_dough_cooked;
} else
if (instance_place(x,y,o_cake_blue))
{
held_item = o_cake_blue;
} else
if (instance_place(x,y,o_cake_straw))
{
held_item = o_cake_straw;
} else
if (instance_place(x,y,o_cake_peach))
{
held_item = o_cake_peach;
} else
{
	held_item = noone
}