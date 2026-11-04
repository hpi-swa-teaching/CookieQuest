physics
verticalDirectionFor: aVelocity

	aVelocity y positive
		ifTrue: [^ CqCollision directionAbove]
		ifFalse: [^ CqCollision directionBelow]