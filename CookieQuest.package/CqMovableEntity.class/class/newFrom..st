instance creation
newFrom: aLevel

	| entity |
	entity := self new.
	entity 
		level: aLevel;
		staticAccelerations:
			(IdentityDictionary new
				at: #gravity put: 0 @ (entity level metadata gravity * entity gravityInfluence);
				yourself);
		loadPicture.
	entity nextState enterState.
	^ entity