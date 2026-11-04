collision handling
createCollisionFor: anEntity with: secondsPassed withoutDirection: aDirection

	^ CqCollision
		withCollider: self
		withCollidee: anEntity
		from: (self
			alternateDirectionTo: aDirection
			with: secondsPassed)