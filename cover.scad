include <properties.scad>

$fn=128;

module oval(w, h, height, center)
{
	scale([1, h/w, 1]) cylinder(h=height, r=w, center=false);
}

module cover()
{
	union()
	{
		difference()
  		{
			cube([65*space, 65*space, 3*thickness],center = true);
			union()
      		{
				translate([22,0,-2]) oval(5*space, 15*space, 10*thickness, center = true);
				translate([-22,0,-2]) oval(5*space, 15*space, 10*thickness, center = true);
				translate([0,22,-2]) oval(15*space, 5*space, 10*thickness, center = true);
				translate([0,-22,-2]) oval(15*space, 5*space, 10*thickness, center = true);

			}
		}
		translate([0, 32*space, 0]) rotate([0,90,0]) cylinder(75*space, 2*thickness, 2*thickness, center = true);
	}
}


cover();
