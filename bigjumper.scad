include <properties.scad>
use <jumperpart.scad>

$fn=128;

module bigjumper()
{
    union()
    {
        cube([90*space, 10*space, 3*thickness], center = true);
        translate([-40*space, 0, 0]) jumperpart();
        translate([40*space, 0, 0]) jumperpart();
    }
}


bigjumper();