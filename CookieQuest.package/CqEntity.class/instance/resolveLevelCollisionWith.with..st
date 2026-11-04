collision handling
resolveLevelCollisionWith: anEntity with: secondsPassed

	self
		collideWith: CqCollision levelProperty
		describedBy: (self createCollisionFor: anEntity with: secondsPassed)