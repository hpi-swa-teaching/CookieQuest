collision resolving
resolveDownCollision: aCollision

	self verticalPositionOf: aCollision collider
		to: aCollision collidee position y + aCollision collidee height.
	self selectVerticalVelocityOf: aCollision collider with: #max:.