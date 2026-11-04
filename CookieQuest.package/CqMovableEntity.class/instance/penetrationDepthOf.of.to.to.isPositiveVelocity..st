physics
penetrationDepthOf: firstStart of: firstEnd to: secondStart to: secondEnd isPositiveVelocity: isPositiveVelocity

	| penetrationDepth |
	isPositiveVelocity
		ifTrue: [penetrationDepth := firstEnd - secondStart]
		ifFalse: [penetrationDepth := secondEnd - firstStart].
	^ penetrationDepth