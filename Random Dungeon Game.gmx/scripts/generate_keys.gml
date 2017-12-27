if (ds_exists(finished_modules, ds_type_list)) var finished_modules_size = ds_list_size(finished_modules);
else
{ 
    if (instance_exists(obj_player))
    {
        with (obj_player) instance_destroy();
    }
    room_restart();
    exit;
}

for (var i = 1; i <= Iterations; i++)
{
    var num_locked = get_num_locked(i);
    var key_modules_prev = get_key_modules(i - 1);
    
    if (num_locked > 0)
    {
        for (var j = 1; j <= num_locked + 1; j++)
        {
            var key_modules = get_key_modules(i);
            var locked_key_modules = get_locked_key_modules(i);
            var key_modules_size = ds_list_size(key_modules);
            var locked_key_modules_size = ds_list_size(locked_key_modules);
            
            key_modules_prev = get_key_modules(i - 1);
            var key_modules_prev_size = ds_list_size(key_modules_prev);
            
            randomize();
            if (key_modules_prev_size > 0)
            {
                var rand_i = irandom(key_modules_prev_size - 1);
                var keyRoom = key_modules_prev[| rand_i];
            } 
            else
            {
                var rand_i = irandom(key_modules_size - 1);
                var keyRoom = key_modules[| rand_i];
            }
            
            if (keyRoom != noone)
            {
                
                keyRoom.has_key = true;
                //instance_create(keyRoom.origin_x + 128, keyRoom.origin_y + 88, obj_key);
                gen_puzzle(keyRoom);
                global.total_keys_world++;
                
                if (locked_key_modules_size > 0)
                {
                    locked_key_modules[| 0].pending_key = false;
                }
            }
            
            ds_list_destroy(key_modules);
            ds_list_destroy(locked_key_modules);
        }
    }
}
