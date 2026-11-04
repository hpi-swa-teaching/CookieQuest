transitions
enterState

	self saveCollisionStrategies.
	self movementState enterState.
	self sizeState enterState.
	self directionState enterState.
	self entity loadPicture