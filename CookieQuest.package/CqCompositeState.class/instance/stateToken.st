accessing
stateToken

	^ (self movementToken asString, '_',
		self directionToken asString, '_',
		self sizeToken asString)