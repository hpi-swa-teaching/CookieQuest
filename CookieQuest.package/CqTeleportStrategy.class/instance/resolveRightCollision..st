collision resolving
resolveRightCollision: aCollision

	self
		positionOf: aCollision collider
		toDestination: aCollision collidee destination
		withHorizontalAdjustment: (aCollision collider width + 1) negated