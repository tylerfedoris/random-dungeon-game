small = 124;
normal = 152;

if (!instance_exists(obj_cursor)) instance_create(90, small, obj_cursor);

if (keyboard_check_pressed(vk_down) || keyboard_check_pressed(vk_up))
{
    if (obj_cursor.y == small) obj_cursor.y = normal;
    else obj_cursor.y = small;
}

if (state_time > 5 && (Input.button_a || Input.start || Input.select))
{
    if (obj_cursor.y == small)
    {
        audio_stop_all();
        global.difficulty = 2;
        room_goto(rm_dungeon);
        state_switch(st_game_in_level);
    }
    else
    {
        audio_stop_all();
        global.difficulty = 3;
        room_goto(rm_dungeon);
        state_switch(st_game_in_level);
    }
}
