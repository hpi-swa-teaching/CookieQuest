logic
startMovingLeft

	self nextState
		directionState: CqLeftState new;
		movementState: CqWalkingState new