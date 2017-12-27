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
var last_gen_modules = ds_list_create();
var numBossKeys = 4;

for (var i = 0; i < finished_modules_size; i++)
{
    if (finished_modules[| i].generation == Iterations && !finished_modules[| i].has_key)
    {
        ds_list_add(last_gen_modules, finished_modules[| i]);
    }
}

last_gen_modules_size = ds_list_size(last_gen_modules);

if (last_gen_modules_size < 4)
{
    numBossKeys = last_gen_modules_size;
}

var numKeysSpawned = 0;

while (numKeysSpawned < numBossKeys)
{
    randomize();
    var randI = irandom(last_gen_modules_size - 1);
    var chosen_module = last_gen_modules[| randI];
    if (!chosen_module.has_key)
    {
        var enemy_rm = get_enemy_rooms();
        chosen_module.room_grid = array_to_grid(enemy_rm);
        chosen_module.is_enemy_room = true;
        chosen_module.has_key = true;
        numKeysSpawned++;
        global.total_boss_keys++;
    }
}

for (var i = 0; i < last_gen_modules_size; i++)

{
    var chosen_module = last_gen_modules[| i];
    if (!chosen_module.has_key && !chosen_module.has_container)
    {
        var enemy_rm = get_enemy_rooms();
        chosen_module.room_grid = array_to_grid(enemy_rm);
        chosen_module.is_enemy_room = true;
        chosen_module.has_container = true;
    }
}

ds_list_destroy(last_gen_modules);
