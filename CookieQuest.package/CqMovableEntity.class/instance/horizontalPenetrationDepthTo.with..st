physics
horizontalPenetrationDepthTo: aMorph with: aVelocity

	^ self
		penetrationDepthOf: self precisePosition x
		of: (self precisePosition x + self width)
		to: aMorph position x
		to: (aMorph position x + aMorph width)
		isPositiveVelocity: aVelocity x positive