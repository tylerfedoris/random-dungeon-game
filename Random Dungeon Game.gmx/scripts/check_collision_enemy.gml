/// check_collision_enemy(vx, vy, obj)

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

x += _vx;
y += _vy;

if (_xCollision) 
{
    x += -_vx;
}

if (_yCollision) 
{
    y += -_vy;
}

return _xCollision || _yCollision;
