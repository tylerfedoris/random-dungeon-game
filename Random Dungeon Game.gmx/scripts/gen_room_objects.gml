/// gen_room_objects(rm)

var rm = argument0;

for (var ix = 0; ix < rm.grid_width; ix++)
{
    for (var iy = 0; iy < rm.grid_height; iy++)
    {
        var tile = rm.room_grid[# ix, iy];
        var tile_size = 16;
        var xx, yy;
        
        var xx = ((ix mod 16) * tile_size) + rm.origin_x;
        var yy = iy * tile_size + rm.origin_y;
        
        var block = instance_position(xx, yy, obj_block);
        var enemy = instance_position(xx, yy, obj_par_enemy);
        var key = instance_position(xx, yy, obj_key);
        
        switch(tile)
        {
            case "BL":
            {
                if (!block)
                {
                    var new_block = instance_create(xx, yy, obj_block);
                    new_block.assigned_room = rm;
                    new_block.origin_x = xx;
                    new_block.origin_y = yy;
                    new_block.movable = false;
                    ds_grid_set(rm.room_grid, ix, iy, "FL");
                }
                break;
            }
            
            case "PB":
            {
                if (!block)
                {
                    var new_block = instance_create(xx, yy, obj_block);
                    new_block.assigned_room = rm;
                    new_block.origin_x = xx;
                    new_block.origin_y = yy;
                    new_block.movable = true;
                    ds_grid_set(rm.room_grid, ix, iy, "FL");
                    ds_list_add(rm.blocks, new_block);
                }
                break;
            }
            
            case "En":
            {
                if (!enemy)
                {
                    var enemy_obj;
                    if (((has_key && !is_puzzle) || has_container) && num_red_blobs < 2) 
                    {
                        enemy_obj = obj_red_blob;
                        num_red_blobs++;
                    }
                    else enemy_obj = get_random_enemy();
                    
                    var new_enemy = instance_create(xx, yy, enemy_obj);
                    new_enemy.assigned_room = rm;
                    rm.num_enemies++;
                    ds_grid_set(rm.room_grid, ix, iy, "FL");
                }
                break;
            }
            
            case "KK":
            {
                if (!key && rm.puzzle_solved)
                {
                    instance_create(xx, yy, obj_key);
                    ds_grid_set(rm.room_grid, ix, iy, "FL");
                }
            }
        }
    }
} 
