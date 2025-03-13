// Unchangables
rodOOD=15.5; // Discraft = 15.5, pvc 22
// Typically this is 25, 30, or 50
// twoInchPlateHoleID=50.8
// measuredHoleID=27
weightsID=27;

// Rod Holder
rodHolderIDSlop=0.5;
rodHolderID=rodOOD + rodHolderIDSlop;
rodHolderOODSlop=1;
rodHolderOOD=weightsID - rodHolderOODSlop;
rodHolderHeight=80;

// Bottom Part
bottomPartHeight=7;
bottomPartOOD=weightsID * 3;

// Fix low poly cylinder by increasing $fn (facet number)
$fn=500;