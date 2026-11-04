collision handling
resolveEntityCollisionWith: anEntity with: secondsPassed

	self dispatchCollision: (self createCollisionFor: anEntity with: secondsPassed)