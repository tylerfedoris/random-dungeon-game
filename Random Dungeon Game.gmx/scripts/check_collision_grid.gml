/// check_collision_obj(vx, vy)
var _vx, _vy, _xCollision, _yCollision;

_vx = argument[0];
_vy = argument[1];
_xCollision = false;
_yCollision = false;



if ( grid_place_meeting(x + _vx, y) ) {
    _xCollision = true;
}

if ( grid_place_meeting(x, y + _vy) ) {
    _yCollision = true;
}


x += _vx;
y += _vy;
    
if (_xCollision) {
    x = (x div 8) * 8;
    if ( sign(vx)) == -1 x += 8;
}

if (_yCollision) {
    y = (y div 8) * 8;
    if ( sign(vy)) == -1 y += 8;
}

return _xCollision || _yCollision;
