physics
verticalPenetrationDepthTo: aMorph with: aVelocity

	^ self
		penetrationDepthOf: self precisePosition y
		of: (self precisePosition y + self height)
		to: aMorph position y
		to: (aMorph position y + aMorph height)
		isPositiveVelocity: aVelocity y positive