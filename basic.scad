include <variables.scad>

// bottom part
cylinder(bottomPartHeight,bottomPartOOD,bottomPartOOD);

// rod holder which has a hole for the rod
translate([0, 0, bottomPartHeight]) {
    difference() {
        // Outer cylinder of the rod holder
        cylinder(rodHolderHeight, rodHolderOOD/2, rodHolderOOD/2);
        
        // Inner hole for the rod
        cylinder(rodHolderHeight, rodHolderID/2, rodHolderID/2);
    }
}

// Smooth fillet transition between bottom part and rod holder
translate([0, 0, bottomPartHeight]) {
    difference() {
        // Fillet ring
        cylinder(bottomPartHeight, bottomPartOOD/2, rodHolderOOD/2);
        
        // Inner hole for the rod
        cylinder(bottomPartHeight, rodHolderID/2, rodHolderID/2);
    }
}



