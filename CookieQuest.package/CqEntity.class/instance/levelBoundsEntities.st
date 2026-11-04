level bounds
levelBoundsEntities

	^ {self leftLevelBoundEntity
		. self rightLevelBoundEntity
		. self upLevelBoundEntity
		. self lowLevelBoundEntity} asBag