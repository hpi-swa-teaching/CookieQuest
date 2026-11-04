level bounds
upLevelBoundEntity

	^ Morph new
		position:
			(self level position x
			@ self level position y - self levelBoundEntityThickness);
		extent:
			self level width @ self levelBoundEntityThickness;
		yourself 