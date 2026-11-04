physics
addGroundResistance: aTile
	"Add the surface resistance of the tile we are colliding with to our temporary resistance.
	The value is modified if we're moving (see other method)"

	self isGroundResistanceAdded ifTrue: [^ self].
	self
		isGroundResistanceAdded: true; 
		temporaryResistanceCoefficient:
			self temporaryResistanceCoefficient
			+ (self calculateGroundResistance: aTile)