// Make sure this object survives room changes
persistent = true;

// Room IDs
room_day  = Room1;
room_night = room2;

// Start in day mode
current_cycle = 0; // 0 = day, 1 = night

// 5 minutes in steps (assuming 60 FPS)
alarm_length = 60 * 60 * 5;

// Start the cycle
alarm[0] = alarm_length;

