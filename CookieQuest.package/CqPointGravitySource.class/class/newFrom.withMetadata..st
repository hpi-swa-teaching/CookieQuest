instance creation
newFrom: aLevel withMetadata: anEntityMetadata

	| instance |
	instance := (super newFrom: aLevel withMetadata: anEntityMetadata)
		gravity: (anEntityMetadata properties at: #gravity).		
	instance
		extent: anEntityMetadata size;
		maxGravity: (anEntityMetadata properties at: #maxGravity).
	instance submorphs first position: (instance bounds center - (instance submorphs first extent // 2)).
	^ instance