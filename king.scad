$fn = 100;
error = 0.1;
difference() {
    import ("king.stl");
    
    cube([5+error,13+error,3], center=true);
    cube([13+error,5+error,3], center=true);
}

translate([30, 0 , 1])
union() {
    cylinder(h=2, r=15, center = true);
    
    
    translate([0,0,1])
    color("red")
    cube([5,13,3], center=true);
    
    translate([0,0,1])
    color("red")
    cube([13,5,3], center=true);
    
    }