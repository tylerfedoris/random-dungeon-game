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
var count = 0;

for (var c = 0; c < current_gen_modules_size; c++)
{
    var c_module = current_gen_modules[| c];
    if (instance_exists(c_module.north_room) && !c_module.north_locked && c_module.north_room.generation != c_module.generation - 1)
    {
        count++;
    }

    if (instance_exists(c_module.south_room) && !c_module.south_locked && c_module.south_room.generation != c_module.generation - 1)
    {
        count++;
    }
    
    if (instance_exists(c_module.east_room) && !c_module.east_locked && c_module.east_room.generation != c_module.generation - 1)
    {
        count++;
    }
    
    if (instance_exists(c_module.west_room) && !c_module.west_locked && c_module.west_room.generation != c_module.generation - 1)
    {
        count++;
    }
}

return count;
