/// get_num_locked(gen)

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

var gen = argument0;
var numLocked = 0;

for( var i = 0; i < finished_modules_size; i++)
{
    if (finished_modules[| i].generation == gen && finished_modules[| i].is_locked)
    {
        numLocked++;
    }
}

return numLocked;
