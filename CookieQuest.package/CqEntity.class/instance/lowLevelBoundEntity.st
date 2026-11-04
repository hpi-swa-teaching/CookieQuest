level bounds
lowLevelBoundEntity

	^ Morph new
		position:
			(self level position x
			@ self level extent y);
		extent:
			self level width @ self levelBoundEntityThickness;
		yourself