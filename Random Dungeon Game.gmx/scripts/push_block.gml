/// push_block()

//Set boundaries for pushing blocks
var x_limit_left = global.viewRoom.origin_x + 32;
var x_limit_right = global.viewRoom.origin_x + 224;
var y_limit_top = global.viewRoom.origin_y + 32;
var y_limit_bottom = global.viewRoom.origin_y + 144;

// Horizontal push
if (place_meeting(x + vx, y, obj_block))
{
    var block = instance_place(x + vx, y, obj_block);
    with (block)
    {
        if ((x + obj_player.vx) <= x_limit_left || (x + obj_player.vx + 16) >= x_limit_right || !movable)
        {
            obj_player.vx = 0;
        }
        
        if (!moving)
        {
            check_collision_block(sign(obj_player.vx) * 16, 0, obj_solid, obj_door, obj_boss_door, obj_block, obj_par_enemy);
        }
    }
    vx /= 2;
}

// Vertical push
if (place_meeting(x, y + vy, obj_block))
{
    var block = instance_place(x, y + vy, obj_block);
    with (block)
    {
        if ((y + obj_player.vy) <= y_limit_top || (y + obj_player.vy + 16) >= y_limit_bottom || !movable)
        {
            obj_player.vy = 0;
        }
        
        if (!moving)
        {
            check_collision_block(0, sign(obj_player.vy) * 16, obj_solid, obj_door, obj_boss_door, obj_block, obj_par_enemy);
        }
    }
    vy /= 2;
}
