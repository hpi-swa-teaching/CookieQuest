initialization
initialize

	self invertedDirections: IdentityDictionary new.
	self invertedDirections
		at: self class directionLeft put: self class directionRight;
		at: self class directionRight put: self class directionLeft;
		at: self class directionAbove put: self class directionBelow;
		at: self class directionBelow put: self class directionAbove.