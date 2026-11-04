accessing
gravityInfluence: anInfluence
	"sets the gravityInfluence instance variable to the given value and updates accordgly the staticAcceleration."
	
	gravityInfluence := anInfluence.
	self staticAccelerations
			at: self class gravityAccelerationToken
			put: 0 @ (self level metadata gravity * self gravityInfluence)