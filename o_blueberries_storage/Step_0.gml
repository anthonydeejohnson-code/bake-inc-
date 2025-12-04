if (place_meeting(x, y, o_player2) && o_player2.can_hold = true)
{
instance_create_layer(o_player2.x, o_player2.y, "Holding", o_blueberry);
} else if (place_meeting(x, y, o_player1) && o_player1.can_hold = true)
{
instance_create_layer(o_player1.x, o_player1.y, "Holding", o_blueberry);
}

