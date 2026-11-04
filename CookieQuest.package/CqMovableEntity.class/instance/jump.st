motion
jump

	self availableJumps < 1 ifTrue: [^ self].
	self velocity: self velocity + self jumpingVelocity.
	self availableJumps: self availableJumps - 1.