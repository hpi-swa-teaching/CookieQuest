collision resolving
resolveUpCollision: aCollision

	self verticalPositionOf: aCollision collider
		to: aCollision collidee position y - aCollision collider height.
	self selectVerticalVelocityOf: aCollision collider with: #min:.
	aCollision collider resetAfterJump.