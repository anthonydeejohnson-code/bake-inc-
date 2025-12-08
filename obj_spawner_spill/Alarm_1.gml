if (!spillage_present)
{
    var s = instance_create_layer(x, y, "Instances", o_spillage);
    s.spawner_id = id;
    spillage_present = true;
}

alarm[1] = irandom_range(spawn_min, spawn_max);
