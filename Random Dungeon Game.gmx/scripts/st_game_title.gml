if (!audio_is_playing(mus_titlescreen)) audio_play_sound(mus_titlescreen,1,false);

// Wait 5 steps in order to ensure the current state has been loaded properly
// before moving on to the next one
if (state_time > 5 && Input.start) {
    room_goto(rm_selection);
    state_switch(st_selection);
}
