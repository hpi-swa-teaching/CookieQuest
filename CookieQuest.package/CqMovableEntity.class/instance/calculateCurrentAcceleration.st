physics
calculateCurrentAcceleration
	"Answer the acceleration that acts on this object the moment this method is called."

	^ self staticAccelerationsCombined
	+ self temporaryAcceleration
	- (self resistanceCoefficient * self velocity)
	- (self temporaryResistanceCoefficient * self velocity)