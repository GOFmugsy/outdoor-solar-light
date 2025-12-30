$fn = 400;

$buffer = 0.4;

$solar = [51 + $buffer, 51 + $buffer];
$neopixelInnerD = 32 + $buffer;
$neopixelOuterD = 44 + $buffer;

$solarHolderTh = 1;
$solarHolderH = 3;
$neopixelHolderTh = 1;
$neopixelHolderH = 2;

$top = [$solar[0] + 1, $solar[1] + 1, $solarHolderH + 2.4];

// draw top
difference(){
	cube(size = [$top[0], $top[1], $solarHolderH + $top[2]], center = true);
	translate([0, 0, $top[2] / 2]) cube(size = [$solar[0], $solar[1], $solarHolderH], center = true);
	translate([0, 0, -($top[2] / 2) - ($neopixelOuterD - $neopixelInnerD) / 1.414]) rotate_extrude(){
		translate([($neopixelInnerD + (($neopixelOuterD - $neopixelInnerD) / 2)) / 2, 0, 0]) rotate(45) square((($neopixelOuterD - $neopixelInnerD)) / 1.414);
	}
}

