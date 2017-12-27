/// get_locked_key_modules(gen)

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
var lockedKeyModules = ds_list_create();

for (var i = 0; i < finished_modules_size; i++)
{
    var checkModule = finished_modules[| i];
    
    if (checkModule.generation == gen && checkModule.pending_key)
    {
        ds_list_add(lockedKeyModules, checkModule);
    }
}

return lockedKeyModules;
