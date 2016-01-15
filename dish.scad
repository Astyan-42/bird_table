include <properties.scad>

$fn=128;

module base()
{
    union()
    {   
        //bottom
        cube([60*space, 60*space, 3*thickness],center = true);
        //walls
        translate([30*space-1.5*thickness,0, 15*hight]) rotate([0,90,0]) cube([30*hight, 60*space, 3*thickness],center = true);
        translate([-(30*space-1.5*thickness),0, 15*hight]) rotate([0,90,0]) cube([30*hight, 60*space, 3*thickness],center = true);
        translate([0,-(30*space-1.5*thickness), 15*hight]) rotate([0,90,90]) cube([30*hight, 60*space, 3*thickness],center = true);
        translate([0,30*space-1.5*thickness, 15*hight]) rotate([0,90,90]) cube([30*hight, 60*space, 3*thickness],center = true);
        //holed support
        translate([0,(30+5)*space, 30*hight-1*thickness]) cube([80*space, 10*space, 2*thickness],center = true);
        translate([0,-(30+5)*space, 30*hight-1*thickness]) cube([80*space, 10*space, 2*thickness],center = true);
        translate([(30+5)*space,-(30+5+10)*space, 30*hight-1*thickness]) cube([10*space, 10*space, 2*thickness],center = true);
        translate([(30+5)*space,(30+5+10)*space, 30*hight-1*thickness]) cube([10*space, 10*space, 2*thickness],center = true);
        translate([-(30+5)*space,-(30+5+10)*space, 30*hight-1*thickness]) cube([10*space, 10*space, 2*thickness],center = true);
        translate([-(30+5)*space,(30+5+10)*space, 30*hight-1*thickness]) cube([10*space, 10*space, 2*thickness],center = true);
        //anti fall support
         translate([0,-(30+10)*space-1*thickness, 30*hight+2.5*thickness]) rotate([0,90,90]) cube([9*hight, 60*space, 2*thickness],center = true);
        translate([0,(30+10)*space+1*thickness, 30*hight+2.5*thickness]) rotate([0,90,90]) cube([9*hight, 60*space, 2*thickness],center = true);
       
    }
}


base();