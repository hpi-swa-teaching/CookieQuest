collision
collide: aCollision

	aCollision collider temporaryAcceleration:
		aCollision collider temporaryAcceleration + (self calculateAcceleration: aCollision)
	