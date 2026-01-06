include <../layout.scad>

sofle_left_layout = [
  [ 1, 1, 1, 1, 1, 1, -1.75],
  [ 1, 1, 1, 1, 1, 1, -1.75],
  [ 1, 1, 1, 1, 1, 1, -1.75],
  [ 1, 1, 1, 1, 1, 1, -1.75],
  [-1,-1, 1, 1, 1, 1, 1.75],
];

sofle_right_layout = [
  [-1.75, 1, 1, 1, 1, 1, 1],
  [-1.75, 1, 1, 1, 1, 1, 1],
  [-1.75, 1, 1, 1, 1, 1, 1],
  [-1.75, 1, 1, 1, 1, 1, 1],
  [ 1.75, 1, 1, 1, 1,-1,-1],
];

sofle_default_legends = [
  ["`",  "1", "2", "3", "4", "5", "", "",  "6", "7", "8", "9", "0", ""],
  ["\u238b", "Q", "W", "E", "R", "T", "",  "", "Y", "U", "I", "O", "P", "\u232b"],
  ["\u21b9", "A", "S", "D", "F", "G", "",  "", "H", "J", "K", "L", ";", "'"],
  ["\u21e7", "Z", "X", "C", "V", "B", "",  "", "N", "M", ",", ".", "/", "\u21e7"],
  ["", "", "\u2756", "\u2387", "\u2388","\u2207","\u21b5"," ","\u2206","\u2318", "\u2325", "\u2384"],
];

sofle_left_rotate = [
  [ 0, 0, 0, 0, 0, 0, 0],
  [ 0, 0, 0, 0, 0, 0, 0],
  [ 0, 0, 0, 0, 0, 0, 0],
  [ 0, 0, 0, 0, 0, 0, 0],
  [ 0, 0, 0, 0, 0, -15, 60],
];

sofle_left_x_offset = [
  [ 0, 0, 0, 0, 0, 0, 0],
  [ 0, 0, 0, 0, 0, 0, 0],
  [ 0, 0, 0, 0, 0, 0, 0],
  [ 0, 0, 0, 0, 0, 0, 0],
  [ 0, 0, 0, 0, 0, 2.5, -2.5],
];

sofle_left_y_offset = [
   [0, 0, 5, 7.5, 5, 2.5, 0],
   [0, 0, 5, 7.5, 5, 2.5, 0],
   [0, 0, 5, 7.5, 5, 2.5, 0],
   [0, 0, 5, 7.5, 5, 2.5, 0],
   [0, 0, 5, 7.5, 5, 0.25, -5],
];

module sofle_left() {
    simple_layout(sofle_left_layout) {
        x=sofle_left_x_offset[$row][$column];
        y=sofle_left_y_offset[$row][$column];
        z=sofle_left_rotate[$row][$column];

        translate([x,y,0]) rotate([0,0,z])
            legend(sofle_default_legends[$row][$column])
                children();
    }
}

module sofle_right() {
    simple_layout(sofle_right_layout) {
        x=sofle_left_x_offset[$row][6-$column];
        y=sofle_left_y_offset[$row][6-$column];
        z=sofle_left_rotate[$row][6-$column];

        translate([-x,y,0]) rotate([0,0,-z])
            legend(sofle_default_legends[$row][7+$column])
                children();
        }
}

module sofle_both() {
    translate([-165.5,118,0])
        sofle_left() children();

    translate([18,118,0])
        sofle_right() children();
}
