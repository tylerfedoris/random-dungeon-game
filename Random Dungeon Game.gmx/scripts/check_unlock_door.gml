var door = instance_place(x + vx, y + vy, obj_door);

if (door != noone)
{
    if (keys > 0)
    {
        keys--;
        if (door.x == global.viewRoom.origin_x + 16)
        {
            global.viewRoom.west_locked = false;
        }
        if (door.x == global.viewRoom.origin_x + 224)
        {
            global.viewRoom.east_locked = false;
        }
        if (door.y == global.viewRoom.origin_y + 16)
        {
            global.viewRoom.north_locked = false;
        }
        if (door.y == global.viewRoom.origin_y + 144)
        {
            global.viewRoom.south_locked = false;
        }
        
        with door instance_destroy();
        audio_play_sound(snd_door_open, 5, false);
    }
} 
