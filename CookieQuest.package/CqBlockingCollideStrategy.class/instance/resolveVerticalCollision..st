collision resolving
resolveVerticalCollision: aCollision
	
	aCollision direction == CqCollision directionAbove
		ifTrue: [self resolveUpCollision: aCollision]
		ifFalse: [self resolveDownCollision: aCollision].
		