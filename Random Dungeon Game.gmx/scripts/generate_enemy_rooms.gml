var finished_modules_size = ds_list_size(finished_modules);

var valid_modules = ds_list_create();

for (var i = 0; i < finished_modules_size; i++)
{
    if (!finished_modules[| i].has_container && !finished_modules[| i].has_key && finished_modules[| i].generation > 0)
    {
        ds_list_add(valid_modules, finished_modules[| i]);
    }
}

var valid_modules_size = ds_list_size(valid_modules);

for (var i = 0; i < valid_modules_size; i++)
{
    var enemy_rm = get_enemy_rooms();
    
    if (i > global.num_enemy_rooms - 1) break;
    
    valid_modules[| i].room_grid = array_to_grid(enemy_rm);
    valid_modules[| i].is_enemy_room = true;
}
