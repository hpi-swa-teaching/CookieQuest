initialization
initialize

	super initialize.
	self
		timer: 0;
		color: Color black;
		basicContent: Morph new;
		addMorph: self content.
	self content color: Color transparent