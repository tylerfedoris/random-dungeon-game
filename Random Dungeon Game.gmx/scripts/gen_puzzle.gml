/// gen_puzzle(rm)

var rm = argument0;
rm.is_puzzle = true;
rm.puzzle_solution = ds_list_create();
var puzzle = get_puzzle(rm);

rm.room_grid = array_to_grid(puzzle);

gen_solution(rm);

