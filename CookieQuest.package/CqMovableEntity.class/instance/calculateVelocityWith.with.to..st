physics
calculateVelocityWith: secondsPassed with: oldAcceleration to: newAcceleration
	"Answer the velocity resulting from the current velocity, an old and new acceleration and
	an elapsed time using the velocity verlet algorithm"

	^ self velocity
	+ self temporaryVelocity
	+ (((self currentAcceleration + newAcceleration) / 2) * secondsPassed)