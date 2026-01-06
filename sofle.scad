include <./includes.scad>

// To check the alignment of the layout
/*
for(i=[0:1]) {
    color("red")
        mirror([i,0,0])
            import("models/sofle.stl");
}
*/

$font="Code2000:style=Regular";

sofle_both() cherry_row($row+1) key();
