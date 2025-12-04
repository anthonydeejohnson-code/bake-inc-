
if (moving_too = "register")
{
	move_speedx = .5
	move_speedy = 0
	direction = point_direction(x, y, o_cash_register.x, o_cash_register.y);

	
} else if  (moving_too = "checkout")
{	
	move_speedy = .5;
	move_speedx = 0;
	direction = point_direction(x,y, o_handout.x, o_handout.y);
	waiting_for_order = true;

} else if (moving_too = "away")
{
	move_speedx = -1;
	move_speedy = 0;
}

timer -= delta_time / 1000000; // convert microseconds → seconds

// If time runs out, delete customer
if (timer <= 0) {
	var pCtrl = instance_find(o_particles, 0);
	o_game_manager.rating +=1;
	 audio_play_sound(Fah,1,false);
    instance_destroy();
}


var new_x = x - move_speedx;
var new_y = y + move_speedy;

// Stop if the next step hits a barrier OR another customer
if (!place_meeting(new_x, new_y, o_barrier) && 
    !place_meeting(new_x, new_y, o_customer))
{
	audio_play_sound(Concrete_scrape_loop, 30, true);
    x = new_x;
    y = new_y;
} else {
	audio_stop_sound(Concrete_scrape_loop);
}


// Check if we're running into another customer
var others= instance_place(x, y, o_customer);

if (others!= noone && others!= id)
{
    // Determine the direction you're currently moving in
    if (move_speedx != 0) {
        // Horizontal movement
        if (move_speedx > 0) x = others.x- sprite_width;     // Push to left of other
        else                x = others.x+ sprite_width;     // Push to right of other
    }

    if (move_speedy != 0) {
        // Vertical movement
        if (move_speedy > 0) y = others.y- sprite_height;    // Push above other
        else                y = others.y+ sprite_height;      // Push below other
    }
}

if (instance_exists(o_pause)) exit;


 

	 
