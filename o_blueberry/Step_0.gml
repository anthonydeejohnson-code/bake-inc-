if (place_meeting(x, y, o_player1) && o_player1.holding = true)
{
	held = true;
held_by = "player1";
}
if (place_meeting(x, y, o_player2) && o_player2.holding = true)
{
	held = true;
held_by = "player2";
}

if (held)
{
	switch (held_by)
	{
		case "player1" : x = o_player1.x y = o_player1.y; break;
		case "player2" : x = o_player2.x y = o_player2.y ; break;
		case "noone" : x=x y=y; break;
	}
}
if (!held)
{
x=x;
y=y;
}
if (place_meeting(x,y,o_trash) && place_meeting(x, y,o_player1))
{
	o_player1.holding_item = noone
instance_destroy()	
}
if (place_meeting(x,y,o_trash) && place_meeting(x, y,o_player2))
{
	o_player2.holding_item = noone
instance_destroy()	
}


