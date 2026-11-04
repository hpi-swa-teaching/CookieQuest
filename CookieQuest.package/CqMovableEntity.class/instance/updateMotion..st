physics
updateMotion: secondsPassed
	"Update acceleration and velocity regarding the given elapsed Time.
	(Use Velocity Verlet algorithm.)"
	
	| newAcceleration |
	newAcceleration := self calculateCurrentAcceleration.
	self velocity: (self
		calculateVelocityWith: secondsPassed
		with: self currentAcceleration
		to: newAcceleration).
	self currentAcceleration: newAcceleration.
	self resetTemporaryData