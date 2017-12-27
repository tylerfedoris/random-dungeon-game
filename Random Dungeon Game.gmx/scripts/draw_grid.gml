for (var ix = 0; ix < grid_width; ix++)
{
    for (var iy = 0; iy < grid_height; iy++)
    {
        var tile = room_grid[# ix, iy];
        draw_text(origin_x + (ix * 16), origin_y + (iy * 16), string(tile));
    }
}
