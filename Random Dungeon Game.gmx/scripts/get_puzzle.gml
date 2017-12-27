/// get_puzzle(rm)

var rm = argument0;
var puzzles_list = ds_list_create();


//Puzzle 0
var new_room_data = "00 00 00 00 00 00 00 UL UR 00 00 00 00 00 00 00 "+
                    "00 C1 UU UU UU UU UU NL NR UU UU UU UU UU C2 00 "+
                    "00 LL FL FL FL FL FL FL FL FL FL FL FL FL RR 00 "+
                    "00 LL FL FL FL FL FL FL FL FL FL FL FL FL RR 00 "+
                    "00 LL FL FL FL PB KK FL FL VX FL VX FL FL RR 00 "+
                    "L0 WW FL FL PB PB PB FL FL FL VX FL FL FL EE R0 "+
                    "00 LL FL FL FL PB FL FL FL VX FL VX FL FL RR 00 "+
                    "00 LL FL FL FL FL FL FL FL FL FL FL FL FL RR 00 "+
                    "00 LL FL FL FL FL FL FL FL FL FL FL FL FL RR 00 "+
                    "00 C4 DD DD DD DD DD SL SR DD DD DD DD DD C3 00 "+
                    "00 00 00 00 00 00 00 DL DR 00 00 00 00 00 00 00 ";

new_room_data = string_to_array(new_room_data, " ");
                    
ds_list_add(puzzles_list, new_room_data);

//Puzzle 1
var new_room_data = "00 00 00 00 00 00 00 UL UR 00 00 00 00 00 00 00 "+
                    "00 C1 UU UU UU UU UU NL NR UU UU UU UU UU C2 00 "+
                    "00 LL FL FL FL FL FL FL FL FL FL FL FL FL RR 00 "+
                    "00 LL FL FL FL FL FL FL FL FL FL FL FL FL RR 00 "+
                    "00 LL FL FL FL KK FL FL FL FL PB FL FL FL RR 00 "+
                    "L0 WW FL FL BL BL BL FL FL BL XX BL FL FL EE R0 "+
                    "00 LL FL FL BL BL BL FL FL BL BL BL FL FL RR 00 "+
                    "00 LL FL FL FL FL FL FL FL FL FL FL FL FL RR 00 "+
                    "00 LL FL FL FL FL FL FL FL FL FL FL FL FL RR 00 "+
                    "00 C4 DD DD DD DD DD SL SR DD DD DD DD DD C3 00 "+
                    "00 00 00 00 00 00 00 DL DR 00 00 00 00 00 00 00 ";

new_room_data = string_to_array(new_room_data, " ");
                    
ds_list_add(puzzles_list, new_room_data);

//Puzzle 2
var new_room_data = "00 00 00 00 00 00 00 UL UR 00 00 00 00 00 00 00 "+
                    "00 C1 UU UU UU UU UU NL NR UU UU UU UU UU C2 00 "+
                    "00 LL FL FL FL FL FL FL FL FL FL FL FL FL RR 00 "+
                    "00 LL FL FL FL FL FL FL FL FL PB FL FL FL RR 00 "+
                    "00 LL FL FL BL BL FL KK FL FL XX BL FL FL RR 00 "+
                    "L0 WW FL FL BL BL BL FL FL BL BL XX PB FL EE R0 "+
                    "00 LL FL FL BL BL FL FL FL FL XX BL FL FL RR 00 "+
                    "00 LL FL FL FL FL FL FL FL FL PB FL FL FL RR 00 "+
                    "00 LL FL FL FL FL FL FL FL FL FL FL FL FL RR 00 "+
                    "00 C4 DD DD DD DD DD SL SR DD DD DD DD DD C3 00 "+
                    "00 00 00 00 00 00 00 DL DR 00 00 00 00 00 00 00 ";

new_room_data = string_to_array(new_room_data, " ");
                    
ds_list_add(puzzles_list, new_room_data);

//Puzzle 3
var new_room_data = "00 00 00 00 00 00 00 UL UR 00 00 00 00 00 00 00 "+
                    "00 C1 UU UU UU UU UU NL NR UU UU UU UU UU C2 00 "+
                    "00 LL FL FL FL FL FL FL FL FL FL FL FL FL RR 00 "+
                    "00 LL FL FL FL FL FL FL FL FL FL FL FL FL RR 00 "+
                    "00 LL FL FL BL BL FL FL FL PB XX BL FL FL RR 00 "+
                    "L0 WW FL FL FL BL FL KK FL FL BL FL FL FL EE R0 "+
                    "00 LL FL FL FL BL BL FL FL XX BL FL FL FL RR 00 "+
                    "00 LL FL FL FL FL FL FL FL FL PB FL FL FL RR 00 "+
                    "00 LL FL FL FL FL FL FL FL FL FL FL FL FL RR 00 "+
                    "00 C4 DD DD DD DD DD SL SR DD DD DD DD DD C3 00 "+
                    "00 00 00 00 00 00 00 DL DR 00 00 00 00 00 00 00 ";

new_room_data = string_to_array(new_room_data, " ");
                    
ds_list_add(puzzles_list, new_room_data);

//Puzzle 4
var new_room_data = "00 00 00 00 00 00 00 UL UR 00 00 00 00 00 00 00 "+
                    "00 C1 UU UU UU UU UU NL NR UU UU UU UU UU C2 00 "+
                    "00 LL FL FL FL FL FL FL FL FL FL FL FL FL RR 00 "+
                    "00 LL FL FL VX FL VX FL FL FL PB FL FL FL RR 00 "+
                    "00 LL FL FL FL VX FL FL FL PB FL PB FL FL RR 00 "+
                    "L0 WW FL FL VX FL VX FL FL KK PB FL PB FL EE R0 "+
                    "00 LL FL FL FL VX FL FL FL PB FL PB FL FL RR 00 "+
                    "00 LL FL FL VX FL VX FL FL FL PB FL FL FL RR 00 "+
                    "00 LL FL FL FL FL FL FL FL FL FL FL FL FL RR 00 "+
                    "00 C4 DD DD DD DD DD SL SR DD DD DD DD DD C3 00 "+
                    "00 00 00 00 00 00 00 DL DR 00 00 00 00 00 00 00 ";

new_room_data = string_to_array(new_room_data, " ");
                    
ds_list_add(puzzles_list, new_room_data);

//Puzzle 5
var new_room_data = "00 00 00 00 00 00 00 UL UR 00 00 00 00 00 00 00 "+
                    "00 C1 UU UU UU UU UU NL NR UU UU UU UU UU C2 00 "+
                    "00 LL FL FL FL FL FL FL FL FL FL FL FL FL RR 00 "+
                    "00 LL FL FL FL FL FL KK FL FL FL FL FL FL RR 00 "+
                    "00 LL FL FL FL PB FL FL FL FL PB FL FL FL RR 00 "+
                    "L0 WW FL FL BL XX BL FL FL BL XX BL FL FL EE R0 "+
                    "00 LL FL FL BL BL BL FL FL BL BL BL FL FL RR 00 "+
                    "00 LL FL FL FL FL FL FL FL FL FL FL FL FL RR 00 "+
                    "00 LL FL FL FL FL FL FL FL FL FL FL FL FL RR 00 "+
                    "00 C4 DD DD DD DD DD SL SR DD DD DD DD DD C3 00 "+
                    "00 00 00 00 00 00 00 DL DR 00 00 00 00 00 00 00 ";

new_room_data = string_to_array(new_room_data, " ");
                    
ds_list_add(puzzles_list, new_room_data);

//Puzzle 6
var new_room_data = "00 00 00 00 00 00 00 UL UR 00 00 00 00 00 00 00 "+
                    "00 C1 UU UU UU UU UU NL NR UU UU UU UU UU C2 00 "+
                    "00 LL FL FL FL FL FL FL FL FL FL FL FL FL RR 00 "+
                    "00 LL FL FL FL FL FL FL FL FL FL FL FL FL RR 00 "+
                    "00 LL FL FL PB VX PB FL FL PB PB PB FL FL RR 00 "+
                    "L0 WW FL FL VX FL VX VX VX VX VX PB FL FL EE R0 "+
                    "00 LL FL FL PB VX PB KK VX PB VX PB FL FL RR 00 "+
                    "00 LL FL FL FL FL FL FL FL FL FL FL FL FL RR 00 "+
                    "00 LL FL FL FL FL FL FL FL FL FL FL FL FL RR 00 "+
                    "00 C4 DD DD DD DD DD SL SR DD DD DD DD DD C3 00 "+
                    "00 00 00 00 00 00 00 DL DR 00 00 00 00 00 00 00 ";

new_room_data = string_to_array(new_room_data, " ");
                    
ds_list_add(puzzles_list, new_room_data);

//Puzzle 7
var new_room_data = "00 00 00 00 00 00 00 UL UR 00 00 00 00 00 00 00 "+
                    "00 C1 UU UU UU UU UU NL NR UU UU UU UU UU C2 00 "+
                    "00 LL FL FL FL FL FL FL FL FL FL FL FL FL RR 00 "+
                    "00 LL FL FL FL FL FL FL FL FL FL FL FL FL RR 00 "+
                    "00 LL FL FL BL BL BL FL FL FL PB FL FL FL RR 00 "+
                    "L0 WW FL FL BL XX XX FL FL FL KK FL FL FL EE R0 "+
                    "00 LL FL FL BL BL BL FL FL FL PB FL FL FL RR 00 "+
                    "00 LL FL FL FL FL FL FL FL FL FL FL FL FL RR 00 "+
                    "00 LL FL FL FL FL FL FL FL FL FL FL FL FL RR 00 "+
                    "00 C4 DD DD DD DD DD SL SR DD DD DD DD DD C3 00 "+
                    "00 00 00 00 00 00 00 DL DR 00 00 00 00 00 00 00 ";

new_room_data = string_to_array(new_room_data, " ");
                    
ds_list_add(puzzles_list, new_room_data);

//Puzzle 8
var new_room_data = "00 00 00 00 00 00 00 UL UR 00 00 00 00 00 00 00 "+
                    "00 C1 UU UU UU UU UU NL NR UU UU UU UU UU C2 00 "+
                    "00 LL FL FL FL FL FL FL FL FL FL FL FL FL RR 00 "+
                    "00 LL FL FL FL FL FL FL FL FL FL FL FL FL RR 00 "+
                    "00 LL FL FL FL FL BL VX VX BL FL FL FL FL RR 00 "+
                    "L0 WW FL FL FL FL BL BL BL BL FL FL FL FL EE R0 "+
                    "00 LL FL FL FL FL PB KK FL PB FL FL FL FL RR 00 "+
                    "00 LL FL FL FL FL FL FL FL FL FL FL FL FL RR 00 "+
                    "00 LL FL FL FL FL FL FL FL FL FL FL FL FL RR 00 "+
                    "00 C4 DD DD DD DD DD SL SR DD DD DD DD DD C3 00 "+
                    "00 00 00 00 00 00 00 DL DR 00 00 00 00 00 00 00 ";

new_room_data = string_to_array(new_room_data, " ");
                    
ds_list_add(puzzles_list, new_room_data);

//Puzzle 9
var new_room_data = "00 00 00 00 00 00 00 UL UR 00 00 00 00 00 00 00 "+
                    "00 C1 UU UU UU UU UU NL NR UU UU UU UU UU C2 00 "+
                    "00 LL FL FL FL FL FL FL FL FL FL FL FL FL RR 00 "+
                    "00 LL FL PB FL FL FL FL FL FL FL FL PB FL RR 00 "+
                    "00 LL FL FL FL FL VX FL FL VX FL FL FL FL RR 00 "+
                    "L0 WW FL FL FL FL FL KK FL FL FL FL FL FL EE R0 "+
                    "00 LL FL FL FL FL VX FL FL VX FL FL FL FL RR 00 "+
                    "00 LL FL PB FL FL FL FL FL FL FL FL PB FL RR 00 "+
                    "00 LL FL FL FL FL FL FL FL FL FL FL FL FL RR 00 "+
                    "00 C4 DD DD DD DD DD SL SR DD DD DD DD DD C3 00 "+
                    "00 00 00 00 00 00 00 DL DR 00 00 00 00 00 00 00 ";

new_room_data = string_to_array(new_room_data, " ");
                    
ds_list_add(puzzles_list, new_room_data);

//Puzzle 10
var new_room_data = "00 00 00 00 00 00 00 UL UR 00 00 00 00 00 00 00 "+
                    "00 C1 UU UU UU UU UU NL NR UU UU UU UU UU C2 00 "+
                    "00 LL FL FL FL FL FL FL FL FL FL FL FL FL RR 00 "+
                    "00 LL FL FL FL FL BL BL BL BL FL FL FL FL RR 00 "+
                    "00 LL FL FL FL FL PB KK FL PB FL FL FL FL RR 00 "+
                    "L0 WW FL FL FL FL FL FL FL FL FL FL FL FL EE R0 "+
                    "00 LL FL FL FL FL VX BL BL VX FL FL FL FL RR 00 "+
                    "00 LL FL FL FL FL BL FL FL BL FL FL FL FL RR 00 "+
                    "00 LL FL FL FL FL FL FL FL FL FL FL FL FL RR 00 "+
                    "00 C4 DD DD DD DD DD SL SR DD DD DD DD DD C3 00 "+
                    "00 00 00 00 00 00 00 DL DR 00 00 00 00 00 00 00 ";

new_room_data = string_to_array(new_room_data, " ");
                    
ds_list_add(puzzles_list, new_room_data);

//Puzzle 11
var new_room_data = "00 00 00 00 00 00 00 UL UR 00 00 00 00 00 00 00 "+
                    "00 C1 UU UU UU UU UU NL NR UU UU UU UU UU C2 00 "+
                    "00 LL FL FL FL FL FL FL FL FL FL FL FL FL RR 00 "+
                    "00 LL FL FL FL FL FL FL FL FL FL FL FL FL RR 00 "+
                    "00 LL FL FL FL FL FL FL FL FL FL FL FL FL RR 00 "+
                    "L0 WW FL FL FL VX FL FL FL KK PB FL FL FL EE R0 "+
                    "00 LL FL FL FL FL FL FL FL FL FL FL FL FL RR 00 "+
                    "00 LL FL FL FL FL FL FL FL FL FL FL FL FL RR 00 "+
                    "00 LL FL FL FL FL FL FL FL FL FL FL FL FL RR 00 "+
                    "00 C4 DD DD DD DD DD SL SR DD DD DD DD DD C3 00 "+
                    "00 00 00 00 00 00 00 DL DR 00 00 00 00 00 00 00 ";

new_room_data = string_to_array(new_room_data, " ");
                    
ds_list_add(puzzles_list, new_room_data);

//Puzzle 12
var new_room_data = "00 00 00 00 00 00 00 UL UR 00 00 00 00 00 00 00 "+
                    "00 C1 UU UU UU UU UU NL NR UU UU UU UU UU C2 00 "+
                    "00 LL FL FL FL FL FL FL FL FL FL FL FL FL RR 00 "+
                    "00 LL FL FL BL FL BL FL FL FL FL FL FL FL RR 00 "+
                    "00 LL FL FL PB FL PB FL FL VX VX FL FL FL RR 00 "+
                    "L0 WW FL FL FL BL FL KK FL FL FL FL FL FL EE R0 "+
                    "00 LL FL FL FL FL FL FL FL FL FL FL FL FL RR 00 "+
                    "00 LL FL FL FL FL FL FL FL FL FL FL FL FL RR 00 "+
                    "00 LL FL FL FL FL FL FL FL FL FL FL FL FL RR 00 "+
                    "00 C4 DD DD DD DD DD SL SR DD DD DD DD DD C3 00 "+
                    "00 00 00 00 00 00 00 DL DR 00 00 00 00 00 00 00 ";

new_room_data = string_to_array(new_room_data, " ");
                    
ds_list_add(puzzles_list, new_room_data);

//Puzzle 13
var new_room_data = "00 00 00 00 00 00 00 UL UR 00 00 00 00 00 00 00 "+
                    "00 C1 UU UU UU UU UU NL NR UU UU UU UU UU C2 00 "+
                    "00 LL FL FL FL FL FL FL FL FL FL FL FL FL RR 00 "+
                    "00 LL FL FL FL FL FL BL BL FL FL FL FL FL RR 00 "+
                    "00 LL FL FL FL FL BL XX XX BL FL FL FL FL RR 00 "+
                    "L0 WW FL FL FL FL FL FL FL FL FL FL FL FL EE R0 "+
                    "00 LL FL FL FL FL FL KK FL FL FL FL FL FL RR 00 "+
                    "00 LL FL FL FL FL FL PB PB FL FL FL FL FL RR 00 "+
                    "00 LL FL FL FL FL FL FL FL FL FL FL FL FL RR 00 "+
                    "00 C4 DD DD DD DD DD SL SR DD DD DD DD DD C3 00 "+
                    "00 00 00 00 00 00 00 DL DR 00 00 00 00 00 00 00 ";

new_room_data = string_to_array(new_room_data, " ");
                    
ds_list_add(puzzles_list, new_room_data);

//Puzzle 14
var new_room_data = "00 00 00 00 00 00 00 UL UR 00 00 00 00 00 00 00 "+
                    "00 C1 UU UU UU UU UU NL NR UU UU UU UU UU C2 00 "+
                    "00 LL FL FL FL FL FL FL FL FL FL FL FL FL RR 00 "+
                    "00 LL FL FL FL FL FL FL FL FL FL FL FL FL RR 00 "+
                    "00 LL FL FL FL FL FL BL BL FL FL FL FL FL RR 00 "+
                    "L0 WW FL FL FL PB FL XX XX FL PB FL FL FL EE R0 "+
                    "00 LL FL FL FL FL FL BL BL FL FL FL FL FL RR 00 "+
                    "00 LL FL FL FL FL FL FL FL KK FL FL FL FL RR 00 "+
                    "00 LL FL FL FL FL FL FL FL FL FL FL FL FL RR 00 "+
                    "00 C4 DD DD DD DD DD SL SR DD DD DD DD DD C3 00 "+
                    "00 00 00 00 00 00 00 DL DR 00 00 00 00 00 00 00 ";

new_room_data = string_to_array(new_room_data, " ");
                    
ds_list_add(puzzles_list, new_room_data);

//Puzzle 15
var new_room_data = "00 00 00 00 00 00 00 UL UR 00 00 00 00 00 00 00 "+
                    "00 C1 UU UU UU UU UU NL NR UU UU UU UU UU C2 00 "+
                    "00 LL FL FL FL FL FL FL FL FL FL FL FL FL RR 00 "+
                    "00 LL FL FL FL FL FL FL FL FL FL FL FL FL RR 00 "+
                    "00 LL FL FL FL VX FL FL FL PB FL PB FL FL RR 00 "+
                    "L0 WW FL FL VX VX VX FL FL FL PB FL FL FL EE R0 "+
                    "00 LL FL FL FL VX FL FL KK PB FL PB FL FL RR 00 "+
                    "00 LL FL FL FL FL FL FL FL FL FL FL FL FL RR 00 "+
                    "00 LL FL FL FL FL FL FL FL FL FL FL FL FL RR 00 "+
                    "00 C4 DD DD DD DD DD SL SR DD DD DD DD DD C3 00 "+
                    "00 00 00 00 00 00 00 DL DR 00 00 00 00 00 00 00 ";

new_room_data = string_to_array(new_room_data, " ");
                    
ds_list_add(puzzles_list, new_room_data);

//Puzzle 16
var new_room_data = "00 00 00 00 00 00 00 UL UR 00 00 00 00 00 00 00 "+
                    "00 C1 UU UU UU UU UU NL NR UU UU UU UU UU C2 00 "+
                    "00 LL FL FL FL FL FL FL FL FL FL FL FL FL RR 00 "+
                    "00 LL FL FL FL PB FL PB PB FL PB FL FL FL RR 00 "+
                    "00 LL FL FL FL FL FL KK FL FL FL FL FL FL RR 00 "+
                    "L0 WW FL FL BL BL BL BL BL BL BL BL FL FL EE R0 "+
                    "00 LL FL FL FL VX FL VX VX FL VX FL FL FL RR 00 "+
                    "00 LL FL FL FL FL FL FL FL FL FL FL FL FL RR 00 "+
                    "00 LL FL FL FL FL FL FL FL FL FL FL FL FL RR 00 "+
                    "00 C4 DD DD DD DD DD SL SR DD DD DD DD DD C3 00 "+
                    "00 00 00 00 00 00 00 DL DR 00 00 00 00 00 00 00 ";

new_room_data = string_to_array(new_room_data, " ");
                    
ds_list_add(puzzles_list, new_room_data);

//Puzzle 17
var new_room_data = "00 00 00 00 00 00 00 UL UR 00 00 00 00 00 00 00 "+
                    "00 C1 UU UU UU UU UU NL NR UU UU UU UU UU C2 00 "+
                    "00 LL FL FL FL FL KK FL FL FL FL FL FL FL RR 00 "+
                    "00 LL FL FL FL FL FL FL FL FL PB FL FL FL RR 00 "+
                    "00 LL FL FL BL BL BL FL PB XX XX XX PB FL RR 00 "+
                    "L0 WW FL FL FL BL FL FL FL FL BL FL FL FL EE R0 "+
                    "00 LL FL FL BL FL BL FL FL XX FL XX FL FL RR 00 "+
                    "00 LL FL FL FL FL FL FL FL PB FL PB FL FL RR 00 "+
                    "00 LL FL FL FL FL FL FL FL FL FL FL FL FL RR 00 "+
                    "00 C4 DD DD DD DD DD SL SR DD DD DD DD DD C3 00 "+
                    "00 00 00 00 00 00 00 DL DR 00 00 00 00 00 00 00 ";

new_room_data = string_to_array(new_room_data, " ");
                    
ds_list_add(puzzles_list, new_room_data);

//Puzzle 18
var new_room_data = "00 00 00 00 00 00 00 UL UR 00 00 00 00 00 00 00 "+
                    "00 C1 UU UU UU UU UU NL NR UU UU UU UU UU C2 00 "+
                    "00 LL FL FL FL FL FL FL FL FL FL FL FL FL RR 00 "+
                    "00 LL FL PB FL XX FL PB FL FL BL FL FL FL RR 00 "+
                    "00 LL FL FL XX FL XX FL FL BL FL BL FL FL RR 00 "+
                    "L0 WW FL PB FL BL FL PB FL FL BL FL FL FL EE R0 "+
                    "00 LL FL FL XX FL XX FL FL BL FL BL FL FL RR 00 "+
                    "00 LL FL FL PB XX FL PB FL FL BL FL FL FL RR 00 "+
                    "00 LL FL FL FL FL FL FL FL KK FL FL FL FL RR 00 "+
                    "00 C4 DD DD DD DD DD SL SR DD DD DD DD DD C3 00 "+
                    "00 00 00 00 00 00 00 DL DR 00 00 00 00 00 00 00 ";

new_room_data = string_to_array(new_room_data, " ");
                    
ds_list_add(puzzles_list, new_room_data);

//Puzzle 19
var new_room_data = "00 00 00 00 00 00 00 UL UR 00 00 00 00 00 00 00 "+
                    "00 C1 UU UU UU UU UU NL NR UU UU UU UU UU C2 00 "+
                    "00 LL FL FL FL FL FL FL FL FL FL FL FL FL RR 00 "+
                    "00 LL FL PB FL FL FL KK FL FL FL PB FL FL RR 00 "+
                    "00 LL FL FL PB FL FL VX FL FL PB FL FL FL RR 00 "+
                    "L0 WW FL FL FL FL VX FL VX FL FL FL FL FL EE R0 "+
                    "00 LL FL FL FL VX FL VX FL VX FL FL FL FL RR 00 "+
                    "00 LL FL FL PB FL FL FL FL FL PB FL FL FL RR 00 "+
                    "00 LL FL FL FL FL FL FL FL FL FL FL FL FL RR 00 "+
                    "00 C4 DD DD DD DD DD SL SR DD DD DD DD DD C3 00 "+
                    "00 00 00 00 00 00 00 DL DR 00 00 00 00 00 00 00 ";

new_room_data = string_to_array(new_room_data, " ");
                    
ds_list_add(puzzles_list, new_room_data);



var puzzles_list_size = ds_list_size(puzzles_list);
var used;

randomize();

do
{
    used = false;
    var puzzles_used_size = ds_list_size(global.puzzles_used);
    var rand_i = irandom(puzzles_list_size - 1);
    
    if (puzzles_used_size > 0)
    {
        for (var i = 0; i < puzzles_used_size; i++)
        {
            if (rand_i == global.puzzles_used[| i])
            {
                used = true;
                break;
            }
        }
    }

}
until !used;

ds_list_add(global.puzzles_used, rand_i);
rm.puzzle_index = rand_i;

return puzzles_list[| rand_i];
                    


