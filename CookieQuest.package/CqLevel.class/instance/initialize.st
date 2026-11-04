initialization
initialize

	super initialize.
	ActiveHand newKeyboardFocus: self.
	self
		clipSubmorphs: true;
		color: self defaultColor;
		height: self defaultHeight;
		width: self defaultWidth;
		inputHandler: CqInputHandler new;
		backgroundLayers: OrderedCollection new.