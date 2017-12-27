///draw_collision_boxes(rm)

var rm = argument0;

for (var ix = 0; ix < rm.grid_width; ix++)
{
    for (var iy = 0; iy < rm.grid_height; iy++)
    {
        var tile = rm.room_grid[# ix, iy];
        var tile_size = 16;
        
        var xx = ((ix mod 16) * tile_size) + rm.origin_x;
        var yy = iy * tile_size + rm.origin_y;
        
        var wall_top = instance_position(xx, yy, obj_wall_top);
        var wall_full = instance_position(xx, yy, obj_wall_full);
        var door_top = instance_position(xx, yy, obj_door_top);
        var door_full = instance_position(xx, yy, obj_door_full);
        var boss_door_top = instance_position(xx, yy, obj_boss_door_top);
        var boss_door_full = instance_position(xx, yy, obj_boss_door_full);
        var doorway_full = instance_position(xx, yy, obj_doorway_full);
        var doorway_top = instance_position(xx, yy, obj_doorway_top);
        
        switch(tile) 
        {
            case "00":
            {
                if (!wall_full)
                {
                    instance_create(xx, yy, obj_wall_full);
                }
                break;
            }
            case "UU": 
            {
                if (!wall_top)
                {
                    instance_create(xx, yy, obj_wall_top);
                }
              
                break;
            }
            case "DD": 
            {
                if (!wall_full)
                {
                    instance_create(xx, yy, obj_wall_full);
                }
              
                break;
            }
            case "LL": 
            {
                if (!wall_full)
                {
                    instance_create(xx, yy, obj_wall_full);
                }
              
                break;
            }
            case "RR": 
            {
                if (!wall_full)
                {
                    instance_create(xx, yy, obj_wall_full);
                }
              
                break;
            }
            case 'NL' :
            {
                if (instance_exists(rm.north_room))
                {
                    if (!rm.north_locked)
                    {
                        if (wall_top)
                        {
                            with wall_top instance_destroy();
                        }
                        if (door_top)
                        {
                            with door_top instance_destroy();
                        }
                        if (boss_door_top)
                        {
                            with boss_door_top instance_destroy();
                        }
                        if (!doorway_top)
                        {
                            instance_create(xx, yy, obj_doorway_top);
                        }
                    }
                    else
                    {
                        if (!rm.north_boss)
                        {
                            if (!door_top)
                            {
                                instance_create(xx, yy, obj_door_top);
                            }
                        }
                        else
                        {
                            if (!boss_door_top)
                            {
                                instance_create(xx, yy, obj_boss_door_top);
                            }
                        }
                    }
                }
                else
                {
                    if (!wall_top)
                    {
                        instance_create(xx, yy, obj_wall_top);
                    }
                }
                break;
            }
            case 'NR' :
            {
                if (instance_exists(rm.north_room))
                {
                    if (!rm.north_locked)
                    {
                        if (wall_top)
                        {
                            with wall_top instance_destroy();
                        }
                        if (door_top)
                        {
                            with door_top instance_destroy();
                        }
                        if (boss_door_top)
                        {
                            with boss_door_top instance_destroy();
                        }
                        if (!doorway_top)
                        {
                            instance_create(xx, yy, obj_doorway_top);
                        }
                    }
                    else
                    {
                        if (!rm.north_boss)
                        {
                            if (!door_top)
                            {
                                instance_create(xx, yy, obj_door_top);
                            }
                        }
                        else
                        {
                            if (!boss_door_top)
                            {
                                instance_create(xx, yy, obj_boss_door_top);
                            }
                        }
                    }
                }
                else
                {
                    if (!wall_top)
                    {
                        instance_create(xx, yy, obj_wall_top);
                    }
                }
                break;
            }
            case 'SL' :
            {
                if (instance_exists(rm.south_room))
                {
                    if (!rm.south_locked)
                    {
                        if (wall_full)
                        {
                            with wall_full instance_destroy();
                        }
                        if (door_full)
                        {
                            with door_full instance_destroy();
                        }
                        if (boss_door_full)
                        {
                            with boss_door_full instance_destroy();
                        }
                        if (!doorway_full)
                        {
                            instance_create(xx, yy, obj_doorway_full);
                        }
                    }
                    else
                    {
                        if (!rm.south_boss)
                        {
                            if (!door_full)
                            {
                                instance_create(xx, yy, obj_door_full);
                            }
                        }
                        else
                        {
                            if (!boss_door_full)
                            {
                                instance_create(xx, yy, obj_boss_door_full);
                            }
                        }
                    }
                }
                else
                {
                    if (!wall_full)
                    {
                        instance_create(xx, yy, obj_wall_full);
                    }
                }
                break;
            }
            case 'SR' :
            {
                if (instance_exists(rm.south_room))
                {
                    if (!rm.south_locked)
                    {
                        if (wall_full)
                        {
                            with wall_full instance_destroy();
                        }
                        if (door_full)
                        {
                            with door_full instance_destroy();
                        }
                        if (boss_door_full)
                        {
                            with boss_door_full instance_destroy();
                        }
                        if (!doorway_full)
                        {
                            instance_create(xx, yy, obj_doorway_full);
                        }
                    }
                    else
                    {
                        if (!rm.south_boss)
                        {
                            if (!door_full)
                            {
                                instance_create(xx, yy, obj_door_full);
                            }
                        }
                        else
                        {
                            if (!boss_door_full)
                            {
                                instance_create(xx, yy, obj_boss_door_full);
                            }
                        }
                    }
                }
                else
                {
                    if (!wall_full)
                    {
                        instance_create(xx, yy, obj_wall_full);
                    }
                }
                break;
            }
            case 'EE' :
            {
                if (instance_exists(rm.east_room))
                {
                    if (!rm.east_locked)
                    {
                        if (wall_full)
                        {
                            with wall_full instance_destroy();
                        }
                        if (door_full)
                        {
                            with door_full instance_destroy();
                        }
                        if (boss_door_full)
                        {
                            with boss_door_full instance_destroy();
                        }
                        if (!doorway_full)
                        {
                            instance_create(xx, yy, obj_doorway_full);
                        }
                    }
                    else
                    {
                        if (!rm.east_boss)
                        {
                            if (!door_full)
                            {
                                instance_create(xx, yy, obj_door_full);
                            }
                        }
                        else
                        {
                            if (!boss_door_full)
                            {
                                instance_create(xx, yy, obj_boss_door_full);
                            }
                        }
                    }
                }
                else
                {
                    if (!wall_full)
                    {
                        instance_create(xx, yy, obj_wall_full);
                    }
                }
                break;
            }
            case 'WW' :
            {
                if (instance_exists(rm.west_room))
                {
                    if (!rm.west_locked)
                    {
                        if (wall_full)
                        {
                            with wall_full instance_destroy();
                        }
                        if (door_full)
                        {
                            with door_full instance_destroy();
                        }
                        if (boss_door_full)
                        {
                            with boss_door_full instance_destroy();
                        }
                        if (!doorway_full)
                        {
                            instance_create(xx, yy, obj_doorway_full);
                        }
                    }
                    else
                    {
                        if (!rm.west_boss)
                        {
                            if (!door_full)
                            {
                                instance_create(xx, yy, obj_door_full);
                            }
                        }
                        else
                        {
                            if (!boss_door_full)
                            {
                                instance_create(xx, yy, obj_boss_door_full);
                            }
                        }
                    }
                }
                else
                {
                    if (!wall_full)
                    {
                        instance_create(xx, yy, obj_wall_full);
                    }
                }
                break;
            }
        }     
    }
}    

