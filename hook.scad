include <properties.scad>
$fn=128;

module torus()
{
    radius = 1.5*thickness;
    bend_radius = 10*space;
    rotate_extrude()
    translate([bend_radius + radius, 0, 0])
    circle(r=radius);
}

module extend()
{
     translate([1*hight,0,0]) rotate([0,90,0]) cylinder(2*hight, 1.5*thickness, 2*thickness, center = true);
}

module oriented_cylinder(length,r)
{
    translate([(length/2+1.5)*hight,0,0]) rotate([0,90,0]) cylinder(length*hight, r*thickness, r*thickness, center = true);
}

module hook()
{
    union()
    {
        difference()
        {
            torus();
            translate([0,-15*space, -2.5*thickness]) cube([15*space,30*space, 5*thickness]);
        }
        translate([0,-10*space-1.5*thickness, 0]) extend();
        translate([0,+10*space+1.5*thickness, 0]) extend();
        translate([0,-10*space-1.5*thickness, 0]) oriented_cylinder(10,2);
        translate([0,10*space+1.5*thickness, 0]) oriented_cylinder(40,2);
        translate([9*hight,-10*space-1.5*thickness, 0]) oriented_cylinder(2,3);
    }
}

hook();
                
