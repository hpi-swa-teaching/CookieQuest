logic
startNoclipMovingDown

	self nextState
		directionState: CqDownState new;
		movementState: CqNoclipMovingState new