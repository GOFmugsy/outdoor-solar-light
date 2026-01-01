$fn = 400;

$buffer = 0.4;

$solar = [51 + $buffer, 51 + $buffer];
$neopixelInnerD = 32 + $buffer;
$neopixelOuterD = 44 + $buffer;

$solarHolderH = 3;
$solarWireGap = 16;
$neopixelHolderTh = 1;
$neopixelHolderH = 2;

$top = [$solar[0] + 2, $solar[1] + 2, $solarHolderH + 2.4];

// draw top
difference(){
	cube(size = [$top[0], $top[1], $solarHolderH + $top[2]], center = true);
	
	// cut solar holder
	translate([0, 0, $top[2] / 2]) 
	cube(size = [$solar[0], $solar[1], $solarHolderH], center = true);
	
	// cut neopixel holder - 1.414 from hypotenuse of right triangle
	translate([0, 0, -($top[2] / 2) - ($neopixelOuterD - $neopixelInnerD) / 1.414]) 
	rotate_extrude(){
		translate([($neopixelInnerD + (($neopixelOuterD - $neopixelInnerD) / 2)) / 2, 0, 0]) 
		rotate(45) 
		square((($neopixelOuterD - $neopixelInnerD)) / 1.414);
	}
	
	// cut wire-hole
	hull() {
		translate([0, $solarWireGap / 2, $top[2] - $solarHolderH - 2]) 
		rotate([0, -90, 0]) 
		cylinder(h = $top[0] / 2, r = 1);
		translate([0, -$solarWireGap / 2, $top[2] - $solarHolderH - 2]) 
		rotate([0, -90, 0]) 
		cylinder(h = $top[0] / 2, r = 1);
	}
}

