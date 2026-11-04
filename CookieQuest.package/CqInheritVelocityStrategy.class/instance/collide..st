collision
collide: aCollision

	| diffVelocity |
	diffVelocity := aCollision collidee velocity - aCollision collider velocity.
	aCollision collider temporaryVelocity: diffVelocity