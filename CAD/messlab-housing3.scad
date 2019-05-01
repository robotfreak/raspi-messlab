use <messlab.scad>

module edges() {
translate([0,0,0]) cube(23.5);
translate([324.5,0,0]) cube(23.5);
translate([0,224,0]) cube(23.5);
translate([324.5,224,0]) cube(23.5);
translate([0,0,124]) cube(23.5);
translate([324.5,0,124]) cube(23.5);
translate([0,224,124]) cube(23.5);
translate([324.5,224,124]) cube(23.5);
}

module conns() {
  //translate([24,0,0]) cube([300,23.5,23.5]);
  translate([24,224,0]) cube([300,23.5,23.5]);
  //translate([24,0,174]) cube([300,23.5,23.5]);
  translate([24,224,124]) cube([300,23.5,23.5]);
  translate([0,24,0]) cube([23.5,200,23.5]);
  translate([0,24,124]) cube([23.5,200,23.5]);
  translate([324,24,0]) cube([23.5,200,23.5]);
  translate([324,24,124]) cube([23.5,200,23.5]);
  translate([0,0,24]) cube([23.5,23.5,100]);
  translate([324,0,24]) cube([23.5,23.5,100]);
  translate([0,224,24]) cube([23.5,23.5,100]);
  translate([324,224,24]) cube([23.5,23.5,100]);
}

color("black") edges();
color("white") conns();
translate([81,0,12]) rotate([90,0,0]) color("grey") type_rounded();
translate([236,0,87]) rotate([90,0,0]) color("grey") lcd_rounded();
translate([81,0,118]) rotate([90,0,0]) color("green") ps_rounded(text1="DPS5005", text2="50V / 5A");
translate([81,0,56]) rotate([90,0,0]) color("blue") ps_rounded(text1="DPS3020", text2="30V / 20A");
translate([190,0,12]) rotate([90,0,0]) color("yellow") dscope_rounded();  //dscope  
translate([280,0,12]) rotate([90,0,0]) color("yellow") dslogic_rounded();  // dslogic
//translate([83,0,24]) rotate([-90,0,0]) color("yellow") ps();
translate([120,220,44]) color("grey") roundedBox(135,55,40,4,"48V Power");
translate([120,220,94]) color("grey") roundedBox(135,55,40,4,"48V Power");
translate([260,230,74]) color("grey") roundedBox(99,36,97,2,"5V Power");
translate([335,192,44]) color("grey") roundedBox(30,60,40,2,"220V");
translate([20,74,74]) rotate([0,90,0]) color("grey") roundedBox(80,80,30,4,"Cooler"); //80mm luefter
translate([180,55,5]) color("grey") roundedBox(74,101,13,4,"DSCope");
translate([270,39,5]) color("grey") roundedBox(74,74,10,4,"DSLogic");
translate([305,59,35]) color("grey") roundedBox(87,16,56,4,"Raspberry"); 
translate([305,120,35]) color("grey") roundedBox(87,56,16,4,"USB"); 