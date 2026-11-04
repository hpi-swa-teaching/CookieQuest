physics
updatePosition: secondsPassed
	"Update the position regarding the given elapsed Time. (Use Velocity Verlet algorithm).
	Use the last known values for velocity and acceleration."
	
	self precisePosition:
		self precisePosition
		+ (self velocity * secondsPassed)
		+ (0.5 * self currentAcceleration * (secondsPassed raisedTo: 2))
