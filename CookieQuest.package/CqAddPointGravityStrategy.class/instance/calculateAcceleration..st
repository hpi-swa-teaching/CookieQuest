physics
calculateAcceleration: aCollision

	^ (self calculateGravity: aCollision) * (self normalizedDirection: aCollision)