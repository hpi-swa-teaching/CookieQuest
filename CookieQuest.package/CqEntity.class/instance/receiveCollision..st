collision handling
receiveCollision: aCollision
	"Tell the collidee that and with whom he collided."
	
	aCollision collidee collideWith: self collisionProperty describedBy: aCollision inverted