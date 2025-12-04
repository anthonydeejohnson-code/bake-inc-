if (keyboard_check_pressed(vk_escape))
{
    if (!instance_exists(o_pause))
    {
        instance_create_layer(0, 0, "Instances", o_pause);
    }
    else
    {
        with (o_pause) instance_destroy();
    }
}

if (keyboard_check_pressed(ord("H")))
{
if (instance_exists(o_help))
{
	instance_destroy(o_help);
} else {
instance_create_layer(0,0,"GUI",o_help);
}
}

if (keyboard_check_pressed(ord("Q")))
{
	game_end();
}
if (keyboard_check_pressed(ord("M")))
{
	room_goto(Menu);
}
if (rating >= 10)
 {
	 room_goto(GameOver);
 }


