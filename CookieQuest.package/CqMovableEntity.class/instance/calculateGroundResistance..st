physics
calculateGroundResistance: aTile
	"Answer the ground resistance to add for the given tile. If moving the value is modified
	because moving reduces the surface resistance that acts on us."

	(self movingLeft or: [self movingRight])
		ifTrue: [^ aTile surfaceResistance * self movingResistanceChangeFactor]
		ifFalse: [^ aTile surfaceResistance]