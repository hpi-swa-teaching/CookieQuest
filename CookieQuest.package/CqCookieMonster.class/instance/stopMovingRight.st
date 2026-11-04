logic
stopMovingRight

	self nextState directionToken == CqRightState stateToken
		ifTrue: [self stop]