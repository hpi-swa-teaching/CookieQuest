physics
bounceDirectionFor: aCollisionDirection

	| directions |
	directions := Dictionary new.
	directions
		at: CqCollision directionAbove put: (0 @ -1);
		at: CqCollision directionBelow put: (0 @ 1);
		at: CqCollision directionRight put: (1 @ 0);
		at: CqCollision directionLeft put: (-1 @ 0).
	^ directions at: aCollisionDirection