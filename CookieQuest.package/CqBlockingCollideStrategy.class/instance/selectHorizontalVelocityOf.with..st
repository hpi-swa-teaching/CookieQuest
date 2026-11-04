collision resolving
selectHorizontalVelocityOf: aMovableEntity with: aSelector
	
	aMovableEntity velocity:
		(0 perform: aSelector with: aMovableEntity velocity x)
		@ aMovableEntity velocity y