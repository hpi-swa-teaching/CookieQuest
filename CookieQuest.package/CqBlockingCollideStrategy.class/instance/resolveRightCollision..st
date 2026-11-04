collision resolving
resolveRightCollision: aCollision

	self 
		horizontalPositionOf: aCollision collider 
		to: aCollision collidee position x + aCollision collidee width.
	self 
		selectHorizontalVelocityOf: aCollision collider 
		with: #max: