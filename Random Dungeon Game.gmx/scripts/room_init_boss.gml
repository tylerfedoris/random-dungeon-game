/// room_init_boss()

var rm_grid;

var rm_data = "00 00 00 00 00 00 00 UL UR 00 00 00 00 00 00 00 "+
              "00 C1 UU UU UU UU UU NL NR UU UU UU UU UU C2 00 "+
              "00 LL FL FL FL FL FL FL FL FL FL FL FL FL RR 00 "+
              "00 LL FL FL FL FL FL FL FL FL FL FL FL FL RR 00 "+
              "00 LL FL FL FL FL FL FL FL FL FL FL FL FL RR 00 "+
              "L0 WW FL FL FL FL FL En FL FL FL FL FL FL EE R0 "+
              "00 LL FL FL FL FL FL FL FL FL FL FL FL FL RR 00 "+
              "00 LL FL FL FL FL FL FL FL FL FL FL FL FL RR 00 "+
              "00 LL FL FL FL FL FL FL FL FL FL FL FL FL RR 00 "+
              "00 C4 DD DD DD DD DD SL SR DD DD DD DD DD C3 00 "+
              "00 00 00 00 00 00 00 DL DR 00 00 00 00 00 00 00 ";
              
rm_data = string_to_array(rm_data, " ");
rm_grid = array_to_grid(rm_data);

return rm_grid;


