/// get_pending_exits(rm)
var rm = argument[0];
var exits = ds_list_create();

if (!instance_exists(rm.north_room))
{
    ds_list_add(exits, 'N');
}

if (!instance_exists(rm.south_room))
{
    ds_list_add(exits, 'S');
}

if (!instance_exists(rm.east_room))
{
    ds_list_add(exits, 'E');
}

if (!instance_exists(rm.west_room))
{
    ds_list_add(exits, 'W');
}

return exits;

