initialization
initialize

	| direction |
	direction := -89.54 @ 0.
	super initialize.
	self
		color: Color transparent;
		velocity: direction