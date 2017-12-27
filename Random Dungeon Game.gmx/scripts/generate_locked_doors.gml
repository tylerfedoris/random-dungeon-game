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

for (var i = 1; i < Iterations; i++)
{
    current_gen_modules = ds_list_create();
    
    for (var j = 0; j < finished_modules_size; j++)
    {
        if(finished_modules[| j].generation == i)
        {
            ds_list_add(current_gen_modules, finished_modules[| j]);
        }
    }
    current_gen_modules_size = ds_list_size(current_gen_modules);
    var numValidDoors = count_valid_doors();
    var numDoors = current_gen_modules_size * 4;
    randomize();
    var numLockedDoors = irandom(numDoors - 4);
    var numLockedInGen = 0;
    
    if (numLockedDoors > 0)
    {
        for (var k = 1; k <= numLockedDoors; k++)
        {
            if (numLockedInGen < numValidDoors)
            {
                var rand_i = irandom_range(0, current_gen_modules_size - 1);
                door_to_lock = get_door_to_lock(current_gen_modules[| rand_i]);
                var chosenRoom = current_gen_modules[| rand_i];
                
                switch(door_to_lock)
                {
                    case "N":
                    {
                        chosenRoom.north_locked = true;
                        chosenRoom.north_room.is_locked = true;
                        chosenRoom.north_room.pending_key = true;
                        global.totalLockedDoors++;
                        numLockedInGen++;
                        break;
                    }
                    case "S":
                    {
                        chosenRoom.south_locked = true;
                        chosenRoom.south_room.is_locked = true;
                        chosenRoom.south_room.pending_key = true;
                        global.totalLockedDoors++;
                        numLockedInGen++;
                        break;
                    }
                    case "E":
                    {
                        chosenRoom.east_locked = true;
                        chosenRoom.east_room.is_locked = true;
                        chosenRoom.east_room.pending_key = true;
                        global.totalLockedDoors++;
                        numLockedInGen++;
                        break;
                    }
                    case "W":
                    {
                        chosenRoom.west_locked = true;
                        chosenRoom.west_room.is_locked = true;
                        chosenRoom.west_room.pending_key = true;
                        global.totalLockedDoors++;
                        numLockedInGen++;
                        break;
                    }
                }
            }
        }
    }
    
    ds_list_destroy(current_gen_modules);  
}
