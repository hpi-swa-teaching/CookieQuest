collision handling
tileCollisionPossible: aCollision

	| verticalTileIndex horizontalTileIndex |
	verticalTileIndex := (aCollision collidee position y // self level metadata tileHeight) + 1.
	horizontalTileIndex := (aCollision collidee position x // self level metadata tileWidth) +1.
	^ self level collisionIsPossibleFromDirection: aCollision direction x: horizontalTileIndex y: verticalTileIndex