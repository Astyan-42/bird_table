include <properties.scad>


$fn=128;

module simple_lock()
{
	polyhedron(points=[[-5,1,0],[-5,-1,0],[-5,0,2],[5,1,0],[5,-1,0],[5,0,2]], faces=[[0,2,1],[3,5,4],[0,3,4,1],[0,3,5,2],[1,4,5,2]]);
}

module fix_jumperpart()
{
	cube([6*thickness, 0.5*thickness, 5*hight], center = true);
	resize([2,2,0]) cube(center=true); 
    simple_lock();
}


module jumperpart()
{
    
    difference()
    {
        translate([0, 0, -5.5]) cylinder(14*hight, 2*thickness, 2*thickness, center = true);
        translate([0, 0, -10]) difference()
        {
            cylinder(1.5*hight, 3*thickness, 3*thickness, center = true);
            cylinder(1.5*hight, 1.5*thickness, 1.5*thickness, center = true);
        }
    }

}

//fix_jumperpart();
jumperpart();



