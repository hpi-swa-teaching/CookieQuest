collision handling
resolveTileCollisionWith: aTile with: secondsPassed

	| collision |
	collision := self createCollisionFor: aTile with: secondsPassed.
	(self tileCollisionPossible: collision)
		ifFalse: [collision := self
				createCollisionFor: aTile
				with: secondsPassed
				withoutDirection: collision direction].
	(self tileCollisionPossible: collision)
		ifTrue: [self dispatchCollision: collision]