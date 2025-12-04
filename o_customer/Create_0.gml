moving_too = "register";
move_speedx= .5;
move_speedy= 0;
order = ("noone")
order_correct = false;
order_sprite = choose(s_cake_blue, s_cake_peach, s_cake_straw);

// Offset for drawing the order above head
order_offset_x = 0;

// Whether the customer is waiting for the item
waiting_for_order = false;

timer_max = 120;        // how many seconds the customer stays
timer = timer_max;    // working countdown
timer_offset_y = -36; // how high above head to draw the timer


