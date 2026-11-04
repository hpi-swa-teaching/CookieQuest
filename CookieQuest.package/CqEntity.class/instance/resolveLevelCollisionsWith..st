collision handling
resolveLevelCollisionsWith: secondsPassed
	"Checks for collisions between entities and resolve them immediately"

	(self levelBoundsEntities) do: [:entity |
		(entity bounds intersects: self bounds)
		ifTrue: [self resolveLevelCollisionWith: entity with: secondsPassed]]