
use <jumperpart.scad>

module littlejumper()
{
    union()
    {
        cube([20, 10, 3], center = true);
        translate([-5, 0, 0]) jumperpart();
        translate([5, 0, 0]) jumperpart();
    }
}


littlejumper();