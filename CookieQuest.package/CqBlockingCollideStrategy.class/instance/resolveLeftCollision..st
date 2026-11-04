collision resolving
resolveLeftCollision: aCollision

	self 
		horizontalPositionOf: aCollision collider 
		to: aCollision collidee position x - aCollision collider width.
	self 
		selectHorizontalVelocityOf: aCollision collider 
		with: #min: