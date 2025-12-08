// Countdown timer
trash_timer -= 1;

// If timer reaches zero → increase rating
if (trash_timer <= 0) {
    global.rating += 1;
    audio_play_sound(Fah,1,false);
    // Check lose condition
    if (global.rating >= 10) {
        room_goto(GameOver);
    }

    // Destroy trash so it doesn't repeat
    instance_destroy();
}


// EXIT if pause menu exists
if (instance_exists(o_pause)) exit;

// --- LOCAL TRASHPILE REFERENCE ---
var trashpile = instance_nearest(x, y, o_trashpile);

// --- CHECK DISTANCES ---
player1_in_circle = point_distance(x, y, o_player1.x, o_player1.y) < circle_radius;
player2_in_circle = point_distance(x, y, o_player2.x, o_player2.y) < circle_radius;


// ======================================================
//                 PLAYER 1 MIXING LOGIC
// ======================================================
if (player1_in_circle)
{
    // Start mixing when pressing A or D
    if (!player1_pickup && (keyboard_check_pressed(ord("A")) || keyboard_check_pressed(ord("D"))))
    {
        player1_pickup = true;
        player1_score  = 0;
        o_player1.can_move = false;
    }

    // If mixing...
    if (player1_pickup)
    {
        // Spam A/D increases score
        if (keyboard_check_pressed(ord("A")) || keyboard_check_pressed(ord("D")))
        {
            player1_score += 2;
        }

        // If finished mixing
        if (player1_score >= score_max)
        {
            if (instance_exists(trashpile)) instance_destroy(trashpile);
            global.cash += 10; // reward     
            player1_pickup = false;
            player1_score  = 0;

            // Restore movement
            o_player1.can_move = true;
        }
    }
}
else
{
    // Leaving circle cancels mixing & restores movement
    player1_pickup = false;
    o_player1.can_move = true;
}



// ======================================================
//                 PLAYER 2 MIXING LOGIC
// ======================================================
if (player2_in_circle)
{
    // Start mixing when Left/Right pressed
    if (!player2_pickup && (keyboard_check_pressed(vk_left) || keyboard_check_pressed(vk_right)))
    {
        player2_pickup = true;
        player2_score  = 0;
        o_player2.can_move = false;
    }

    // If mixing...
    if (player2_pickup)
    {
        // Spam Left/Right increases score
        if (keyboard_check_pressed(vk_left) || keyboard_check_pressed(vk_right))
        {
            player2_score += 2;
        }

        // If finished mixing
        if (player2_score >= score_max)
        {
            if (instance_exists(trashpile)) instance_destroy(trashpile);
            global.cash += 10; // reward
            player2_pickup = false;
            player2_score  = 0;

            // Restore movement
            o_player2.can_move = true;
        }
    }
}
else
{
    // Leaving circle cancels mixing & restores movement
    player2_pickup = false;
    o_player2.can_move = true;
}
