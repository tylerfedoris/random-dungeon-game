if (!instance_exists(obj_dungeon_gen)) 
{
    instance_create(0, 0, obj_dungeon_gen);
}

if (instance_exists(obj_boss_room))
{
    // Wait until enough time has passed and then start fading to black for a nice transition to the 
    // next screen
    if (global.wait_frames == 0 && (obj_boss_room.num_enemies == 0 || !instance_exists(obj_player)))
    {
        draw_set_alpha(draw_get_alpha() - .015);
    }
}

// If the boss room doesn't exist (not likely) the room must be restarted because the game
// cannot be completed if there is no boss
else
{ 
    // Destroy the player object before restaring in order to prevent multiple player objects 
    // from existing in the same room (due to its persistence)
    if (instance_exists(obj_player))
    {
        with (obj_player) instance_destroy();
    }
    room_restart();
    exit;
}

if (draw_get_alpha() <= 0)
{
    draw_set_alpha(1);
    if (obj_boss_room.num_enemies == 0) 
    {
        with(obj_player)instance_destroy();
        room_goto(rm_credits);
        state_switch(st_game_credits);
    }
    else
    { 
        room_goto(rm_game_over);
        state_switch(st_game_over);
    }
}

if (instance_exists(obj_player))
{
    target_xview = (obj_player.x div 256) * 256;
    target_yview = (obj_player.y div 176) * 176;
}

if (!instance_exists(obj_menu) && instance_exists(obj_player))
{
    instance_create(0, 0, obj_menu);
}

if (state_time == 0) {
    view_xview[0] = target_xview;
    view_yview[0] = target_yview;
}

if (view_xview[0] != target_xview || view_yview[0] != target_yview)
{
    obj_player.state = "IDLE";
} 

view_xview[0] = move_toward(view_xview[0],target_xview,4);
view_yview[0] = move_toward(view_yview[0],target_yview,4);

if (!audio_is_playing(mus_dungeon01) && instance_exists(obj_player) && !audio_is_playing(mus_dungeon02)) audio_play_sound(mus_dungeon01, 5, true);

if (audio_is_playing(mus_jingle03) || audio_is_playing(mus_boss) || audio_is_playing(snd_win) || audio_is_playing(mus_dungeon02))
{
    audio_pause_sound(mus_dungeon01);
}
else
{
    if (audio_is_paused(mus_dungeon01) && instance_exists(obj_player)) audio_resume_sound(mus_dungeon01);
}
