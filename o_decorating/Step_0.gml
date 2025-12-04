if (instance_exists(o_pause)) exit;
player1_in_circle = point_distance(x, y, o_player1.x, o_player1.y) < circle_radius;
player2_in_circle = point_distance(x, y, o_player2.x, o_player2.y) < circle_radius;
var dough = instance_place(x,y,o_dough_cooked)

// PLAYER 1 decorating
if (player1_in_circle && station_dough == noone && o_player1.held_item == o_dough_cooked)
{
	o_player1.held_item = noone;

	station_dough = dough;
}
if (player1_in_circle && station_dough != noone && is_fruit(o_player1.held_item)) {
    // Start decorating when A or D pressed
	
    if (!player1_decorating && (keyboard_check_pressed(ord("A")) || keyboard_check_pressed(ord("D")))) {
        player1_decorating = true;
        player1_score = 0; // reset score when starting
    }

    //freeze movement and track progress
    if (player1_decorating) {
        o_player1.can_move = false;
		o_player1.can_hold = true;
		o_player1.holding = false;

        // Spam A/D to increase progress
        if (keyboard_check_pressed(ord("A")) || keyboard_check_pressed(ord("D"))) {
            player1_score += 2;
        }

        // Finish decorating
        if (player1_score >= score_max) {
				var product;
				var ingridient;
			switch (o_player1.held_item) {
				case o_strawberry: product = o_cake_straw;ingridient = o_strawberry; break;
				case o_peach : product = o_cake_peach;ingridient = o_peach; break;
				case o_blueberry : product = o_cake_blue;ingridient = o_blueberry; break;
			}
			instance_destroy(dough);
			instance_destroy(ingridient);
			instance_create_layer(o_player1.x, o_player1.y,"Holding", product);
            player1_decorating = false;
            player1_score = 0;
			station_dough = noone;
            o_player1.can_move = true;
		

        }
    }
} else {
    player1_decorating = false; 
}



//player 2 decorating
if (player2_in_circle && station_dough == noone && o_player2.held_item == o_dough_cooked)
{
	o_player2.held_item = noone;

	station_dough = dough;
}
if (player2_in_circle && station_dough != noone && is_fruit(o_player2.held_item)) {
    // Start decorating when A or D pressed
	
    if (!player2_decorating &&((keyboard_check_pressed(vk_left)) || keyboard_check_pressed(vk_right))){
        player2_decorating = true;
        player2_score = 0; // reset score when starting
    }

    //freeze movement and track progress
    if (player2_decorating) {
        o_player2.can_move = false;
		o_player2.can_hold = true;
		o_player2.holding = false;

        // Spam A/D to increase progress
        if (keyboard_check_pressed(vk_left) || keyboard_check_pressed(vk_right)) {
            player2_score += 2;
        }

        // Finish decorating
        if (player2_score >= score_max) {
				var product;
				var ingridient;
			switch (o_player2.held_item) {
				case o_strawberry: product = o_cake_straw;ingridient = o_strawberry; break;
				case o_peach : product = o_cake_peach;ingridient = o_peach; break;
				case o_blueberry : product = o_cake_blue;ingridient = o_blueberry; break;
			}
			instance_destroy(dough);
			instance_destroy(ingridient);
			instance_create_layer(o_player2.x, o_player2.y,"Holding", product);
            player2_decorating = false;
            player2_score = 0;
			station_dough = noone;
            o_player2.can_move = true;
		

        }
    }
} else {
    player2_decorating = false; 
}

