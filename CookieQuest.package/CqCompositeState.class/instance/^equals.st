comparing
= aState

	^ (aState isKindOf: self class)
		and: (self movementState = aState movementState)
		and: (self directionState = aState directionState)
		and: (self sizeState = aState sizeState)
		and: (self stateHolder = aState stateHolder)