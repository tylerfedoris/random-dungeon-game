/// check_room_collision(coordinateStr)

var coordinateStr = argument0;

var collision_check = false;
var usedCoordinates_size = ds_list_size(usedCoordinates);

if (usedCoordinates_size > 0)
{
    for (var c = 0; c < usedCoordinates_size; c++)
    {
        var checkStr = ds_list_find_value(usedCoordinates, c);
        if (coordinateStr == checkStr)
        {
            collision_check = true;
            break;
        }
    }
}

return collision_check;
