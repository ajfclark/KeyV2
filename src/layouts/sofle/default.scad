include <../layout.scad>

// negative numbers are used for spacing
sofle_main = [
  [1, 1, 1, 1, 1, 1,-1,-1,-1, 1, 1, 1, 1, 1, 1],
  [1, 1, 1, 1, 1, 1,-1,-1,-1, 1, 1, 1, 1, 1, 1],
  [1, 1, 1, 1, 1, 1,-1,-1,-1, 1, 1, 1, 1, 1, 1],
  [1, 1, 1, 1, 1, 1, 1,-1, 1, 1, 1, 1, 1, 1, 1],
  [-1,-1,1, 1, 1,-1,-1,-1,-1,-1, 1, 1, 1,-1,-1],
];

sofle_main_legends = [
  ["`~",  "1", "2", "3", "4", "5", "", "", "", "6", "7", "8", "9", "0", ""],
  ["\u238b", "q", "w", "e", "r", "t", "", "", "", "y", "u", "i", "o", "p", "\u232b"],
  ["\u21b9", "a", "s", "d", "f", "g", "", "", "", "h", "j", "k", "l", ";", "'"],
  ["\u21e7", "z", "x", "c", "v", "b", "mute", "", "mply", "n", "m", ",", ".", "/", "\u21e7"],
  ["", "", "win", "\u2387", "\u2388","","","","","","\u2318", "\u2325", "\u2384"],
];

sofle_main_front_legends = [
  ["`~",  "1", "2", "3", "4", "5", "", "", "", "6", "7", "8", "9", "0", ""],
  ["\u238b", "q", "w", "e", "r", "t", "", "", "", "y", "u", "i", "o", "p", "\u232b"],
  ["\u21b9", "a", "s", "d", "f", "g", "", "", "", "h", "j", "k", "l", ";", "'"],
  ["\u21e7", "z", "x", "c", "v", "b", "", "", "", "n", "m", ",", ".", "/", "\u21e7"],
  ["", "", "win", "\u2387", "\u2388","","","","","","\u2318", "\u2325", "\u2384"],
];

sofle_thumbs_l = [
  [1, 1.75]
];

sofle_thumbs_r = [
  [1.75, 1]
];

sofle_thumbs_l_legends = [
  ["\u2207", "\u23de"]
];

sofle_thumbs_l_front_legends = [
  ["lower", "enter"]
];

sofle_thumbs_r_legends = [
  [" ", "\u2206"],
];

sofle_thumbs_r_front_legends = [
  ["space", "raise"]
];

module sofle_default(profile, row_sculpting_offset=1, column_override=undef) {
  layout(sofle_main, profile, legends=sofle_main_legends, front_legends=sofle_main_front_legends, row_sculpting_offset=row_sculpting_offset, column_override=column_override, column_sculpt_profile="cresting_wave") children();
  translate_u(5,-4) rotate([0,0,0]) layout([[1]], profile, legends=[["\u2207"]], front_legends=[["\u2207"]], row_sculpting_offset=row_sculpting_offset+4, column_override=column_override, column_sculpt_profile="cresting_wave") children();
  translate_u(9,-4) rotate([0,0,0]) layout([[1]], profile, legends=[["\u2206"]], front_legends=[["\u2206"]], row_sculpting_offset=row_sculpting_offset+4, column_override=column_override, column_sculpt_profile="cresting_wave") children();
  translate_u(6.25,-5.25)
rotate([0,0,75])
layout([[1.75]], profile, legends=[["\u23de"]], front_legends=[["enter"]], row_sculpting_offset=row_sculpting_offset+4, column_override=column_override, column_sculpt_profile="cresting_wave") children();
translate_u(8.25,-5.25)
translate_u(-.5,1.75,0)
rotate([0,0,-75])
layout([[1.75]], profile, legends=[[" "]], front_legends=[["space"]], row_sculpting_offset=row_sculpting_offset+4, column_override=column_override, column_sculpt_profile="cresting_wave") children();

}
