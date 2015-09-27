module jumperpart()
{
    
    difference()
    {
        translate([0, 0, -5.5]) cylinder(14, 2, 2, center = true);
        translate([0, 0, -10]) difference()
        {
            cylinder(1.5, 3, 3, center = true);
            cylinder(1.5, 1.5, 1.5, center = true);
        }
    }

}

