if (!trash_present)
{
    var t = instance_create_layer(x, y, "Instances", o_trashpile);
    t.spawner_id = id;       // link spawner → trash
    trash_present = true;
}

alarm[1] = irandom_range(spawn_min, spawn_max);
