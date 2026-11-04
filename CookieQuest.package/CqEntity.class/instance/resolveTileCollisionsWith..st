collision handling
resolveTileCollisionsWith: secondsPassed
	"Checks for collision with foreground tiles and resolve them immediately."

	self level foregroundLayer submorphs do: [:tile |
		(tile bounds intersects: self bounds)
			ifTrue: [self resolveTileCollisionWith: tile with: secondsPassed]]