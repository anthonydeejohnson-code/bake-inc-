if (instance_exists(o_pause)) exit;
// Check if players are inside the circle
player1_in_circle = point_distance(x, y, o_player1.x, o_player1.y) < circle_radius;
player2_in_circle = point_distance(x, y, o_player2.x, o_player2.y) < circle_radius;
var dough = instance_place(x, y, o_dough);
// PLAYER 1 MIXING LOGIC
if (player1_in_circle) && (dough != noone) {
    // Start mixing when A or D pressed
	
    if (!player1_mixing && (keyboard_check_pressed(ord("A")) || keyboard_check_pressed(ord("D")))) {
        player1_mixing = true;
        player1_score = 0; // reset score when starting
    }

    // If mixing, freeze movement and track progress
    if (player1_mixing) {
        o_player1.can_move = false;


        // Spam A/D to increase progress
        if (keyboard_check_pressed(ord("A")) || keyboard_check_pressed(ord("D"))) {
            player1_score += 2;
        }

        // Finish mixing
        if (player1_score >= score_max) {
			instance_destroy(dough);
            instance_create_layer(x, y, "Holding", o_bowl);
            player1_mixing = false;
            player1_score = 0;
            o_player1.can_move = true;

        }
    }
} else {
    player1_mixing = false; // leave circle cancels mixing
}

// PLAYER 2 MIXING LOGIC
if (player2_in_circle)  && (dough != noone) {
    // Start mixing when Left or Right pressed
	
    if (!player2_mixing && (keyboard_check_pressed(vk_left) || keyboard_check_pressed(vk_right))) {
        player2_mixing = true;
        player2_score = 0; // reset score when starting
    }

    // If mixing, freeze movement and track progress
    if (player2_mixing) {
        o_player2.can_move = false;
        

        // Spam Left/Right to increase progress
        if (keyboard_check_pressed(vk_left) || keyboard_check_pressed(vk_right)) {
            player2_score += 2;
        }

        // Finish mixing
        if (player2_score >= score_max) {
			instance_destroy(dough);
            instance_create_layer(x, y, "Holding", o_bowl);
			o_player2.can_move = true;
            player2_mixing = false;
            player2_score = 0;
        }
    }
} else {
    player2_mixing = false; // leave circle cancels mixing
}