physics
letBounce: aMovableEntity direction: aDirection

	aDirection x isZero
		ifTrue: [self verticalVelocityToZero: aMovableEntity]
		ifFalse: [self horizontalVelocityToZero: aMovableEntity].
	aMovableEntity velocity:
		aMovableEntity velocity + (self bounceVelocityFactor * aDirection)