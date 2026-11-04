collision
collide: aCollision

	| newVerticalVelocity |
	newVerticalVelocity := (aCollision collider velocity y)
		* (aCollision collidee jumpinessFactor).
	aCollision collider velocity: aCollision collider velocity x @ newVerticalVelocity