logic
stopMovingLeft

	self nextState directionToken == CqLeftState stateToken
		ifTrue: [self stop]