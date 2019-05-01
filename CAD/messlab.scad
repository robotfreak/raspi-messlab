use <roundCornersCube.scad>;
$fn=50;

module ps() {
    difference() {
        cube([120,48,2], center=true);
        translate([10,0,0]) cube([71,39,2], center=true);
        translate([10,0,0]) cube([73,15,2], center=true);
        translate([-45,12,-1]) cylinder(d=8,h=2);
        translate([-45,-12,-1]) cylinder(d=8,h=2);
    }
}

module ps_rounded(text1="", text2="") {
    difference() {
        union() {
            roundCornersCube(120,58,2,3);
            translate([-55,18,1])  linear_extrude(1) text(text1, size=8, halign="true", valign="true", font="Liberation Sans:style=Bold");
            translate([-55,-6,1])  linear_extrude(1) text(text2, size=5, halign="true", valign="true", font="Liberation Sans:style=Bold");
        }
        translate([15,-5,0]) cube([72,40,2], center=true);
        translate([15,-5,0]) cube([76,15,2], center=true);
        translate([-43,7,-1]) cylinder(d=8,h=2);
        translate([-43,-17,-1]) cylinder(d=8,h=2);
    }
}

module dscope_rounded() {
    difference() {
        union() {
            roundCornersCube(87,22,2,3);
            translate([-15,5,1])  linear_extrude(1) text("DSCope", size=5, halign="true", valign="true", font="Liberation Sans:style=Bold");
            translate([-30,5,1])  linear_extrude(1) text("1", size=4, halign="true", valign="true", font="Liberation Sans:style=Bold");
            translate([30,5,1])  linear_extrude(1) text("0", size=4, halign="true", valign="true", font="Liberation Sans:style=Bold");
        }
        translate([0,-3,0]) cube([74,13,2], center=true);
    }
}

module dslogic_rounded() {
    difference() {
        union() {
            roundCornersCube(87,22,2,3);
            translate([-15,5,1])  linear_extrude(1) text("DSLogic", size=5, halign="true", valign="true", font="Liberation Sans:style=Bold");
        }
        translate([0,-3,0]) cube([74,10,2], center=true);
    }
}

module type_rounded(t) {
    difference() {
        union() {
            roundCornersCube(120,22,2,3);
            translate([-48,-5,1])  linear_extrude(1) text(t, size=10, halign="true", valign="true");
        }
    }
}

module lid() {
  difference() {
    cube([10,2,2]);
    rotate([45,0,0]) translate([0,0.5,0.5]) cube([10,2,2]);
  }
}
  
module roundedBox(x,y,z,r,t) {
  roundCornersCube(x,y,z,r);
  translate([-x/4,0,z/2])  linear_extrude(1) text(t, size=8, halign="true", valign="true");
}
   
module lcd() {
    difference() {
        union() {
            cube([180,110,2], center=true);
/*            
            translate([40,45.5,1]) cube([10,3,5]);
            translate([40,44.5,4]) lid();
            translate([-40,45.5,1]) cube([10,3,5]);
            translate([-40,44.5,4]) lid();
            translate([40,-54.5,1]) cube([10,3,5]);
            translate([40,-52.5,6]) rotate([-90,0,0]) lid();
            translate([-40,-54.5,1]) cube([10,3,5]);
            translate([-40,-52.5,6]) rotate([-90,0,0]) lid();
            translate([84.5,-5,1]) cube([3,10,5]);
            translate([-83.5,-5,1]) cube([3,10,5]);
*/            
        }
        cube([156,88,2], center=true);
    }
}

module lcd_rounded(t) {
    difference() {
        union() {
            roundCornersCube(180,120,2,3, center=true);
            translate([-25,45,1])  linear_extrude(1) text(t, size=10, halign="true", valign="true", font="Liberation Sans:style=Bold");
            //translate([25,45,1])  linear_extrude(1) text("MessLab", size=8, halign="true", valign="true");
        }
        translate([0,-5,0]) cube([157,89,2], center=true);
    }
}

module raspi_rounded(t) {
    difference() {
        union() {
            roundCornersCube(36,75,2,3, center=true);
            translate([-15,25,1])  linear_extrude(1) text(t, size=8, halign="true", valign="true", font="Liberation Sans:style=Bold");
        }
        translate([-1,11,0]) cube([14,17,2], center=true);
        translate([0,-15,0]) cube([16,35,2], center=true);
    }
}

module raspi_holder(t) {
    difference() {
        roundCornersCube(68,22,10,2, center=true);
        translate([0,0,2]) cube([68,18,8], center=true);
        translate([29,11,1]) rotate([90,0,0]) cylinder(d=3,h=22);
        translate([-29,11,1]) rotate([90,0,0]) cylinder(d=3,h=22);
    }
}

module sdr_rounded(t) {
    difference() {
        union() {
            roundCornersCube(36,36,2,3, center=true);
            translate([-12,5,1])  linear_extrude(1) text(t, size=8, halign="true", valign="true", font="Liberation Sans:style=Bold");
        }
        translate([0,-5,-1]) cylinder(d=12, h=3);
    }
}

ps_rounded(text1="DPS5005", text2="50V / 5A");
ps_rounded(text1="DPS3020", text2="30V / 20A");
lcd_rounded("RF-tech");
type_rounded("RasPi MessLab");
dscope_rounded();
dslogic_rounded();
roundedBox(74,101,16,4,"DSCope");
raspi_rounded("RasPi");
raspi_holder();
!sdr_rounded("SDR");
