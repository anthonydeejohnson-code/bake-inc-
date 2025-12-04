difficulty_timer += difficulty_speed
spawn_rate = max(min_spawn_rate, 120 - floor(difficulty_timer));

spawn_timer -=1
if (spawn_timer <=0) && (!place_meeting(x, y, o_customer))
{
	var e =instance_create_layer(x,y, "Instances", o_customer);
	e.sprite_index = choose( s_customer1, s_customer1, s_customer1, s_customer2, s_customer2,
	s_customer2, s_customer3, s_customer4, s_customer5, s_customer6, s_customer6, s_customer7,
	s_customer7, s_customer8, s_customer8, s_customer9, s_customer9, s_customer10, s_customer10,
	s_customer11, s_customer12);
	spawn_timer = spawn_rate;
}; 

if (!instance_exists(o_customer))
{
	var e =instance_create_layer(x,y, "Instances", o_customer);
	e.sprite_index = choose( s_customer1, s_customer1, s_customer1, s_customer2, s_customer2,
	s_customer2, s_customer3, s_customer4, s_customer5, s_customer6, s_customer6, s_customer7,
	s_customer7, s_customer8, s_customer8, s_customer9, s_customer9, s_customer10, s_customer10,
	s_customer11, s_customer12);
}