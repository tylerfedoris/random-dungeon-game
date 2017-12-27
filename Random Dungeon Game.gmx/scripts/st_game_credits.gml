if (!audio_is_playing(mus_dungeon02)) audio_play_sound(mus_dungeon02, 5, 1);

move_speed = .5;

if (state_time >= 300) {
    while (obj_credits.y > -160)
    obj_credits.y -= move_speed;
}

if (state_time >= 600)
{
    room_goto(rm_try_again);
    state_switch(st_try_again);
}

