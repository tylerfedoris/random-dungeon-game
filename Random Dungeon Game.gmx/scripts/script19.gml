/// check_collision_grid(vx, vy)
var xx, yy, x_meeting, y_meeting;

xx = argument[0];
yy = argument[1];
x_meeting = false;
y_meeting = false;

var xx_r = ((bbox_right) - global.viewRoom.origin_x) div 16;
var xx_l = ((bbox_left) - global.viewRoom.origin_x) div 16;
var yy_t = ((bbox_top) - global.viewRoom.origin_y) div 16;
var yy_b = ((bbox_bottom) - global.viewRoom.origin_y) div 16;

var xp = x;
var yp = y;

x = xx;
y = yy;

/*
var tile_r_t = global.viewRoom.room_grid[# xx_r, yy_t];
var tile_l_t = global.viewRoom.room_grid[# xx_l, yy_t];
var tile_r_b = global.viewRoom.room_grid[# xx_r, yy_b];
var tile_l_b = global.viewRoom.room_grid[# xx_l, yy_b];
*/

x_meeting = ((global.viewRoom.room_grid[# xx_r, yy_t] != "3") &&
                (global.viewRoom.room_grid[# xx_r, yy_t] != "EN") &&
                (global.viewRoom.room_grid[# xx_r, yy_t] != "ES") &&
                (global.viewRoom.room_grid[# xx_r, yy_t] != "EE") &&
                (global.viewRoom.room_grid[# xx_r, yy_t] != "EW")) ||
              ((global.viewRoom.room_grid[# xx_l, yy_t] != "3") &&
                (global.viewRoom.room_grid[# xx_l, yy_t] != "EN") &&
                (global.viewRoom.room_grid[# xx_l, yy_t] != "ES") &&
                (global.viewRoom.room_grid[# xx_l, yy_t] != "EE") &&
                (global.viewRoom.room_grid[# xx_l, yy_t] != "EW"));

y_meeting = ((global.viewRoom.room_grid[# xx_r, yy_b] != '3') &&
                (global.viewRoom.room_grid[# xx_r, yy_b] != "EN") &&
                (global.viewRoom.room_grid[# xx_r, yy_b] != "ES") &&
                (global.viewRoom.room_grid[# xx_r, yy_b] != "EE") &&
                (global.viewRoom.room_grid[# xx_r, yy_b] != "EW")) ||
              ((global.viewRoom.room_grid[# xx_l, yy_b] != '3') &&
                (global.viewRoom.room_grid[# xx_l, yy_b] != "EN") &&
                (global.viewRoom.room_grid[# xx_l, yy_b] != "ES") &&
                (global.viewRoom.room_grid[# xx_l, yy_b] != "EE") &&
                (global.viewRoom.room_grid[# xx_l, yy_b] != "EW"));


x = xp;
y = yp;
    
return x_meeting || y_meeting;
