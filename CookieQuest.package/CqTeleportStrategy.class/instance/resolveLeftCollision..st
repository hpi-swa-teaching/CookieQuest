collision resolving
resolveLeftCollision: aCollision

	self
		positionOf: aCollision collider
		toDestination: aCollision collidee destination
		withHorizontalAdjustment: (aCollision collidee width + 1)