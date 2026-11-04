collision
collide: aCollision

	aCollision direction == CqCollision directionAbove
		ifTrue: [aCollision collider addGroundResistance: aCollision collidee]