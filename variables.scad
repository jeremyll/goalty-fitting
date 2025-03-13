// Unchangables
rodOOD=15.5; // Discraft = 15.5, pvc 22
weightsID=27; // Typically this is 25, 30, or 50

// Rod Holder
rodHolderIDSlop=0.5;
rodHolderID=rodOOD + rodHolderIDSlop;
rodHolderOODSlop=1;
rodHolderOOD=weightsID - rodHolderOODSlop;
rodHolderHeight=76;

// Bottom Part
bottomPartHeight=5;
bottomPartOOD=weightsID + 5 * 2;

// Fix low poly cylinder by increasing $fn (facet number)
$fn=500;