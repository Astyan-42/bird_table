use <jumperpart.scad>

module bigjumper()
{
    union()
    {
        cube([90, 10, 3], center = true);
        translate([-40, 0, 0]) jumperpart();
        translate([40, 0, 0]) jumperpart();
    }
}


bigjumper();