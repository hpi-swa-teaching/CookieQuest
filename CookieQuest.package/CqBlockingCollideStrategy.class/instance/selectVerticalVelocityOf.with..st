collision resolving
selectVerticalVelocityOf: aMovableEntity with: aSelector
	
	aMovableEntity velocity: 
		aMovableEntity velocity x 
		@ (0 perform: aSelector with: aMovableEntity velocity y)