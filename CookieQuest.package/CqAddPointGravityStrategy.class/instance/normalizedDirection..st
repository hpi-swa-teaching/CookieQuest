physics
normalizedDirection: aCollision

	| direction |
	direction := aCollision collidee center - aCollision collider center.
	direction isZero
		ifTrue: [^ 0 @ 0]
		ifFalse: [^ direction normalized]