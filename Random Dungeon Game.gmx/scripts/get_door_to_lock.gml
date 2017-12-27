///get_valid_doors(rm_check)

rm_check = argument0;
var valid_doors = ds_list_create();

if (instance_exists(rm_check.north_room) && !rm_check.north_locked && rm_check.north_room.generation != rm_check.generation - 1)
{
    ds_list_add(valid_doors, "N");
}

if (instance_exists(rm_check.south_room) && !rm_check.south_locked && rm_check.south_room.generation != rm_check.generation - 1)
{
    ds_list_add(valid_doors, "S");
}

if (instance_exists(rm_check.east_room) && !rm_check.east_locked && rm_check.east_room.generation != rm_check.generation - 1)
{
    ds_list_add(valid_doors, "E");
}

if (instance_exists(rm_check.west_room) && !rm_check.west_locked && rm_check.west_room.generation != rm_check.generation - 1)
{
    ds_list_add(valid_doors, "W");
}

var valid_doors_size = ds_list_size(valid_doors);
var index = irandom_range(0, valid_doors_size - 1);

return valid_doors[| index];
