instance creation
newFrom: aLevel withMetadata: anEntityMetadata

	^ self new
		level: aLevel;
		loadPicture;
		position: anEntityMetadata position