logic
startNoclipMovingRight

	self nextState
		directionState: CqRightState new;
		movementState: CqNoclipMovingState new