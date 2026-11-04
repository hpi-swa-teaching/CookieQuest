resetting
createEntityFor: aLevel with: aMetadata 

	| entityClass |
	entityClass := self entityTypeClassMapping at: (aMetadata type asLowercase).
	^ entityClass newFrom: aLevel withMetadata: aMetadata