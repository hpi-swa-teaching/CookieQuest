physics
axisFromPenetrationDepthTo: aMorph with: aVelocity

	| verticalPenetrationDepth horizontalPenetrationDepth |
	verticalPenetrationDepth := self verticalPenetrationDepthTo: aMorph with: aVelocity.
	horizontalPenetrationDepth := self horizontalPenetrationDepthTo: aMorph with: aVelocity.
	
	(self relativePenetrationFor: verticalPenetrationDepth with: aVelocity y abs)
	>  (self relativePenetrationFor: horizontalPenetrationDepth with: aVelocity x abs)
		ifTrue: [^ self class horizontalAxisToken]
		ifFalse: [^ self class verticalAxisToken]