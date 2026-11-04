collision
collide: aCollision
	
	self
		letBounce: aCollision collider
		direction: (self bounceDirectionFor: aCollision direction)