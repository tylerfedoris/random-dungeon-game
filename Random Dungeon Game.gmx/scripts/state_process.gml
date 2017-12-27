///state_process(state)

if (state == 0) 
{
    state = argument[0];
}

script_execute(state);

// increment state_time if state not changed in order 
// to show how long the current state has been used
if (!state_changed) state_time++;

state_changed = false;
