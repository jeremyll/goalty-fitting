$fn=500;

module basic(rodOOD, weightsID, bottomPartRatio) {
    // Rod Holder
    rodHolderIDSlop=1.5;
    rodHolderID=rodOOD + rodHolderIDSlop;
    rodHolderOODSlop=1.5;
    rodHolderOOD=weightsID - rodHolderOODSlop;
    rodHolderHeight=80;

    // Bottom Part
    bottomPartHeight=7;
    bottomPartOOD=rodHolderOOD * bottomPartRatio;

    // bottom part with hole for rod
    difference() {
        cylinder(bottomPartHeight, r=bottomPartOOD/2);
        cylinder(bottomPartHeight, r=rodHolderID/2);
    }

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
            cylinder(bottomPartHeight*2/3, rodHolderOOD/2 + bottomPartHeight, rodHolderOOD/2);

            // Inner hole for the rod
            cylinder(bottomPartHeight, rodHolderID/2, rodHolderID/2);
        }
    }
}