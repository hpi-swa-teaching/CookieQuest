transitions
enterState

	(self entity movingAccelerationFactor = 0)
		ifFalse: [ self addAcceleration ]