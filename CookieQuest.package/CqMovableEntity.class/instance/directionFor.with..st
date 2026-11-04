physics
directionFor: anAxis with: aVelocity

	(anAxis == self class verticalAxisToken)
		ifTrue: [^ self verticalDirectionFor: aVelocity]
		ifFalse: [^ self horizontalDirectionFor: aVelocity]