transitions
exitState

	self sizeState exitState.
	self movementState exitState.
	self directionState exitState.
	self restoreCollisionStrategies.
	self entity loadPicture