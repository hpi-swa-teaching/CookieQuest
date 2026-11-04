physics
horizontalDirectionFor: aVelocity

	aVelocity x positive
		ifTrue: [^ CqCollision directionLeft]
		ifFalse: [^ CqCollision directionRight]