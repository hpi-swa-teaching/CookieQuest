collision handling
createCollisionFor: anEntity with: secondsPassed

	^ CqCollision 
		withCollider: self 
		withCollidee: anEntity
		from: (self directionRelativeTo: anEntity with: secondsPassed)