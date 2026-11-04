level bounds
rightLevelBoundEntity

	^ Morph new
		position:
			(self level extent x
			@ self level position y);
		extent:
			self levelBoundEntityThickness @ self level height;
		yourself 