transitions
enterState

	self entity
		gravityInfluence: self gravityInfluence;
		movingAccelerationFactor:
			self entity defaultMovingAccelarationFactor * self movementAccelarationFactor