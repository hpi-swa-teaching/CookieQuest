collision handling
resolveEntityCollisionsWith: secondsPassed
	"Checks for collisions between entities and resolve them immediately"

	| entities |
	entities := self level entityLayer submorphs reject: [:each | each = self].
	entities do: [:entity |
		(entity bounds intersects: self bounds)
		ifTrue: [self resolveEntityCollisionWith: entity with: secondsPassed]]