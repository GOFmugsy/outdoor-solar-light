$fn = 400;

// Bring in top for measuring
import("solar-neopixel-holder-23566fb.stl");

$top = [53.4, 53.4, 8.4]; //static dimensions from solar-neo-holder

$bottomTh = 8.4;
$bottom = [$top[0] + 80, $top[1], $bottomTh];

$caseTotalTh = 30;

$carrierTh = 4;

translate([0, 0, -$caseTotalTh])
cube(size = $bottom, center = true);

hull() {
	translate([$bottom[0] / 2 - 4, $bottom[1] / 2 - 4, -$caseTotalTh])
	cube(size = [4, 4, $bottom[2] / 2]);

	translate([$top[0] / 2 - 1, $top[1] / 2 - 4, -$top[2] / 2])
	cube(size = [1, 4, $top[2]]);
}
hull() {
	translate([$bottom[0] / 2 - 4, -$bottom[1] / 2, -$caseTotalTh])
	cube(size = [4, 4, $bottom[2] / 2]);

	translate([$top[0] / 2 - 1, -$top[1] / 2, -$top[2] / 2])
	cube(size = [1, 4, $top[2]]);
}
hull() {
	translate([-$bottom[0] / 2, $bottom[1] / 2 - 4, -$caseTotalTh])
	cube(size = [4, 4, $bottom[2] / 2]);

	translate([-$top[0] / 2, $top[1] / 2 - 4, -$top[2] / 2])
	cube(size = [1, 4, $top[2]]);
}
hull() {
	translate([-$bottom[0] / 2, -$bottom[1] / 2, -$caseTotalTh])
	cube(size = [4, 4, $bottom[2] / 2]);

	translate([-$top[0] / 2, -$top[1] / 2, -$top[2] / 2])
	cube(size = [1, 4, $top[2]]);
}
