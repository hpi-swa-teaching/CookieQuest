logic
startMovingRight

	self nextState 
		directionState: CqRightState new;
		movementState: CqWalkingState new