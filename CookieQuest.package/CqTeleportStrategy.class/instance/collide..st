collision
collide: aCollision

	(aCollision direction == CqCollision directionRight)
		ifTrue: [self resolveRightCollision: aCollision]
		ifFalse: [self resolveLeftCollision: aCollision]