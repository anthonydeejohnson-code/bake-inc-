// Flip cycle: 0 → 1 → 0 → 1 ...
current_cycle = 1 - current_cycle;

if (current_cycle == 0) {
    room_goto(room_day);
} else {
    room_goto(room_night);
}

// Restart 5-minute timer
alarm[0] = alarm_length;
