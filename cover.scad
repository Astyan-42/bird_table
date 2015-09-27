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
			cube([65, 65, 3],center = true);
			union()
      		{
				translate([22,0,-2]) oval(5, 15, 10, center = true);
				translate([-22,0,-2]) oval(5, 15, 10, center = true);
				translate([0,22,-2]) oval(15, 5, 10, center = true);
				translate([0,-22,-2]) oval(15, 5, 10, center = true);

			}
		}
		translate([0, 32, 0]) rotate([0,90,0]) cylinder(75, 2, 2, center = true);
	}
}


cover();