puzzle_solution_size = ds_list_size(puzzle_solution);
var solved = false;
var blocks_size = ds_list_size(blocks);

for (var i = 0; i < blocks_size; i++)
{
    for (var j = 0; j < puzzle_solution_size; j+=2)
    {
        var xx = puzzle_solution[| j];
        var yy = puzzle_solution[| j + 1];
        
        if (blocks[| i].x > xx - 4 && blocks[| i].x < xx + 4 && blocks[| i].y > yy - 4 && blocks[| i].y < yy + 4)
        {
            solved = true;
            break;
        }
        else
        {
            solved = false;
        }
    }
    
    if (!solved) break;
}

if (solved && num_enemies == 0)
{
    puzzle_solved = true;
    if (!audio_is_playing(mus_jingle03)) audio_play_sound(mus_jingle03, 10, false);
}
