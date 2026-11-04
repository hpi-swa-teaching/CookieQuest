logic
startNoclipMovingLeft

	self nextState
		directionState: CqLeftState new;
		movementState: CqNoclipMovingState new