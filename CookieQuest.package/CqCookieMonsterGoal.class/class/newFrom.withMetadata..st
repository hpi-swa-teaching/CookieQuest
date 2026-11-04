instance creation
newFrom: aLevel withMetadata: anEntityMetadata

	^ self new
		level: aLevel;
		nextLevel: (anEntityMetadata properties at: #nextLevel);
		extent: anEntityMetadata size;
		color: Color transparent;
		position: anEntityMetadata position