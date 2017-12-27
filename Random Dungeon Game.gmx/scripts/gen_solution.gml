/// gen_solution(rm)

var rm = argument0;

for (var ix = 0; ix < rm.grid_width; ix++)
{
    for (var iy = 0; iy < rm.grid_height; iy++)
    {
        var tile = rm.room_grid[# ix, iy];
        var tile_size = 16;
        var xx, yy;
        
        xx = ((ix mod 16) * tile_size) + rm.origin_x;
        yy = iy * tile_size + rm.origin_y;
        
        if (tile == "XX" || tile == "VX")
        {
            ds_list_add(rm.puzzle_solution, xx);
            ds_list_add(rm.puzzle_solution, yy);
            rm.tiles_to_solve++;
        }
    }
}
