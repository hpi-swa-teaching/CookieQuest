physics
calculateEffectiveVelocity: secondsPassed

	^ self velocity
	+ (0.5 * self currentAcceleration * secondsPassed)