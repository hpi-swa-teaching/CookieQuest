direction
addAcceleration

	self entity staticAccelerations
		at: self class stateToken
		put: (self directionVector * self entity movingAccelerationFactor)