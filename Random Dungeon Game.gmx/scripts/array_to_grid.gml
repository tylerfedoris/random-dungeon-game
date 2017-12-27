/// array_to_grid(str_array)

var str_array = argument0;
var str_array_size = array_length_1d(str_array);
var str_ds_grid = ds_grid_create(16, 11);
var i = 0;

for (var iy = 0; iy < 11; iy++)
{
    for (var ix = 0; ix < 16; ix++)
    {
        ds_grid_set(str_ds_grid, ix, iy, str_array[i]);
        i++; 
    }
}

return str_ds_grid;
