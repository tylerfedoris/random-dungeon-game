yes = 128;
no = 160;

if (!instance_exists(obj_cursor)) instance_create(64, yes, obj_cursor);

if (keyboard_check_pressed(vk_down) || keyboard_check_pressed(vk_up))
{
    if (obj_cursor.y == yes) obj_cursor.y = no;
    else obj_cursor.y = yes;
}

if (state_time > 5 && (Input.button_a || Input.start || Input.select))
{
    if (obj_cursor.y == yes)
    {
        audio_stop_all();
        room_instance_clear(rm_dungeon);
        room_goto(rm_dungeon);
        state_switch(st_game_in_level);
    }
    else
    {
        game_end();
    }
}
