collision
collide: aCollision

	aCollision isVerticalCollision
		ifTrue: [self resolveVerticalCollision: aCollision]
		ifFalse: [self resolveHorizontalCollision: aCollision]