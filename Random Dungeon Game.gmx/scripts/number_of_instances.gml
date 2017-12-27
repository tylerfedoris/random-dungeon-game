var instances = 0;

with (all)
{
    if object_index=argument0
    {
        instances += 1;
    }
}

return instances;
