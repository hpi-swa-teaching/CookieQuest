level bounds
leftLevelBoundEntity

	^ Morph new
		position:
			(self level position x - self levelBoundEntityThickness
			@ self level position y);
		extent:
			self levelBoundEntityThickness @ self level height;
		yourself 