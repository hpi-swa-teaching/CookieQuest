physics
calculateGravity: aCollision

	| gravity |
	gravity := aCollision collidee gravity * (self fallofFor: aCollision)
		* aCollision collider gravityInfluence.
	^ gravity min: aCollision collidee maxGravity