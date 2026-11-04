stepping
collisionIsPossibleFromDirection: direction x:  x y: y

	^ (direction == CqCollision directionAbove and:
			[(self foregroundLayer occupiedAt: x at: y - 1)  not])
		or: [direction == CqCollision directionBelow and:
			[(self foregroundLayer occupiedAt: x at: y + 1) not]]
		or: [direction == CqCollision directionLeft and:
			[(self foregroundLayer occupiedAt: x - 1  at: y) not]]
		or: [direction == CqCollision directionRight and:
			[(self foregroundLayer occupiedAt: x + 1 at: y) not]]