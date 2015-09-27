$fn=128;

radius = 4;;

bend_radius = 40;

            // torus
rotate_extrude()
translate([bend_radius + radius, 0, 0])
circle(r=radius);

                