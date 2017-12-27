finished_modules_size = ds_list_size(finished_modules);

for (var i = 0; i < finished_modules_size; i++)
{
    ds_grid_destroy(finished_modules[| i].room_grid);
    ds_list_destroy(finished_modules[| i].blocks);
}

for (var a = 0; a < argument_count; a++)
{
    if (ds_exists(argument[a], ds_type_list)) ds_list_destroy(argument[a]);
    if (ds_exists(argument[a], ds_type_grid)) ds_grid_destroy(argument[a]);
}
