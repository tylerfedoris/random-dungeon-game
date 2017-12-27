if (!audio_is_playing(mus_titlescreen)) audio_play_sound(mus_titlescreen, 5, true);



if (Input.left || Input.right || Input.up || Input.down || Input.select || Input.start || Input.button_b || Input.button_a)
{
    room_goto(rm_try_again);
    state_switch(st_try_again);
}
