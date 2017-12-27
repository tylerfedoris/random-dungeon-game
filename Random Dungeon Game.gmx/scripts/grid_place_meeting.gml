/// grid_place_meeting(x, y)
var xx, yy, x_meeting, y_meeting;

var xx = argument[0];
var yy = argument[1];
var x_meeting = false;
var y_meeting = false;

var xp = x;
var yp = y;

x = xx;
y = yy;

var xx_r = ((bbox_right) - global.viewRoom.origin_x) div 16;
var xx_l = ((bbox_left) - global.viewRoom.origin_x) div 16;
var yy_t = ((bbox_top) - global.viewRoom.origin_y) div 16;
var yy_b = ((bbox_bottom) - global.viewRoom.origin_y) div 16;

/*
global.tile_r_t = global.viewRoom.room_grid[# xx_r, yy_t];
global.tile_l_t = global.viewRoom.room_grid[# xx_l, yy_t];
global.tile_r_b = global.viewRoom.room_grid[# xx_r, yy_b];
global.tile_l_b = global.viewRoom.room_grid[# xx_l, yy_b];
*/

x_meeting = ((global.viewRoom.room_grid[# xx_r, yy_t] != "3") &&
                (global.viewRoom.room_grid[# xx_r, yy_t] != "N") &&
                (global.viewRoom.room_grid[# xx_r, yy_t] != "S") &&
                (global.viewRoom.room_grid[# xx_r, yy_t] != "E") &&
                (global.viewRoom.room_grid[# xx_r, yy_t] != "W")) ||
              ((global.viewRoom.room_grid[# xx_l, yy_t] != "3") &&
                (global.viewRoom.room_grid[# xx_l, yy_t] != "N") &&
                (global.viewRoom.room_grid[# xx_l, yy_t] != "S") &&
                (global.viewRoom.room_grid[# xx_l, yy_t] != "E") &&
                (global.viewRoom.room_grid[# xx_l, yy_t] != "W"));

y_meeting = ((global.viewRoom.room_grid[# xx_r, yy_b] != "3") &&
                (global.viewRoom.room_grid[# xx_r, yy_b] != "N") &&
                (global.viewRoom.room_grid[# xx_r, yy_b] != "S") &&
                (global.viewRoom.room_grid[# xx_r, yy_b] != "E") &&
                (global.viewRoom.room_grid[# xx_r, yy_b] != "W")) ||
              ((global.viewRoom.room_grid[# xx_l, yy_b] != "3") &&
                (global.viewRoom.room_grid[# xx_l, yy_b] != "N") &&
                (global.viewRoom.room_grid[# xx_l, yy_b] != "S") &&
                (global.viewRoom.room_grid[# xx_l, yy_b] != "E") &&
                (global.viewRoom.room_grid[# xx_l, yy_b] != "W"));


x = xp;
y = yp;
    
return x_meeting || y_meeting;
