collision resolving
resolveHorizontalCollision: aCollision
	
	aCollision direction == CqCollision directionLeft
		ifTrue: [self resolveLeftCollision: aCollision]
		ifFalse: [self resolveRightCollision: aCollision]