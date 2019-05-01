use <messlab.scad>

$fn=30;

module powersupply() {
    translate([-43,7,0]) cylinder(d=8,h=3);
    translate([-43,-17,0]) cylinder(d=8,h=3);
    translate([15,-5,0]) cube([72,40,10], center=true);
    translate([15,-5,0]) cube([76,15,10], center=true);
}

module dscope() {
    translate([0,-3,0]) cube([74,13,10], center=true);
}

module dslogic() {
    translate([0,-3,0]) cube([74,10,10], center=true);
}

module lcd() {
    translate([2,-8,0]) cube([164,98,10], center=true);
}

module front() {
    difference() {
        cube([360,170,3]);
        //Bohrungen
        translate([15,15,0]) cylinder(d=3,h=3);
        translate([345,15,0]) cylinder(d=3,h=3);
        translate([15,155,0]) cylinder(d=3,h=3);
        translate([345,155,0]) cylinder(d=3,h=3);
        //Power supply
        translate([81,66,0]) powersupply();
        translate([81,128,0]) powersupply();
        //dscope dslogic
        translate([190,22,4]) dscope();
        translate([282,22,4]) dslogic();
        
        translate([236,97,4]) lcd();
    }
}

color("grey") front();
translate([81,22,4]) color("grey") type_rounded("RasPi MessLab");
translate([236,97,4]) color("grey") lcd_rounded("RF-tech");
translate([81,128,4]) color("green") ps_rounded(text1="DPS5005", text2="50V / 5A");
translate([81,66,4]) color("blue") ps_rounded(text1="DPS3020", text2="30V / 20A");
translate([190,22,4]) color("yellow") dscope_rounded();  //dscope  
translate([282,22,4]) color("orange") dslogic_rounded();  // dslogic
