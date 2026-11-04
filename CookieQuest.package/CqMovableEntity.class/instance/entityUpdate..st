accessing
entityUpdate: secondsPassed
	"update positions and perfom collision detection"

	self
		updatePosition: secondsPassed;
		resolveCollisionsWith: secondsPassed.
	self stateChanged ifTrue: [self changeState].
	self updateMotion: secondsPassed