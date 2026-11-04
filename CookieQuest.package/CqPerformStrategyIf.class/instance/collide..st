collision
collide: aCollision

	(self conditionBlock value: aCollision)
		ifTrue: [self strategy collide: aCollision]