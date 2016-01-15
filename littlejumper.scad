include <properties.scad>
use <jumperpart.scad>

$fn=128;

module littlejumper()
{
    union()
    {
        cube([20*space, 10*space, 3*thickness], center = true);
        translate([-5*space, 0, 0]) jumperpart();
        translate([5*space, 0, 0]) jumperpart();
    }
}


littlejumper();