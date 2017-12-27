/// check_collision_block(vx, vy, obj)

var _vx, _vy, _xCollision, _yCollision;

_vx = argument[0];
_vy = argument[1];
_xCollision = false;
_yCollision = false;

for (var i = 2; i < argument_count; i++) 
{
    if ( place_meeting(x + _vx, y, argument[i]) ) 
    {
        _xCollision = true;
    }
    
    if ( place_meeting(x, y + _vy, argument[i]) ) 
    {
        _yCollision = true;
    }
}

target_x = x + _vx;
target_y = y + _vy;

if (!_xCollision && !_yCollision)
{
    moving = true;
    move_towards_point(target_x, target_y, 1);
}

return _xCollision || _yCollision;
