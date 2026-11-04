physics
applyLevelGravity

	self staticAccelerations
		at: self class gravityAccelerationToken
		put: 0 @ (self level metadata gravity * self gravityInfluence).
	self loadPicture