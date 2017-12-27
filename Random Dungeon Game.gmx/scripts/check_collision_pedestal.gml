var pedestal = instance_place(x + vx, y + vy, obj_pedestal);

if (pedestal != noone)
{
    if (bossKeys > 0 && !pedestal.has_key)
    {
        audio_play_sound(snd_key_insert, 8, false);
        pedestal.has_key = true;
        bossKeys--;
        global.total_boss_keys--;
        if (global.total_boss_keys == 0)
        {
            audio_play_sound(snd_boss_door_open, 1, false);
            global.viewRoom.north_locked = false;
            global.viewRoom.south_locked = false;
            global.viewRoom.west_locked = false;
            global.viewRoom.east_locked = false;
        }
    }
}
