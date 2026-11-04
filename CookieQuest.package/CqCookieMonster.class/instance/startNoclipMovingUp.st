logic
startNoclipMovingUp

	self nextState
		directionState: CqUpState new;
		movementState: CqNoclipMovingState new