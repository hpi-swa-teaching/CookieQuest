instance creation
newFrom: aTileArray withMetadata: aLevelMetadata withAssetLoader: anAssetLoader

	| instance |
	instance := CqLevelTileLayer new.
	instance
		metadata: aLevelMetadata;
		extent: aLevelMetadata extent;
		color: Color transparent;
		occupiedFields: (instance createOccupiedFields);
		loadTiles: aTileArray with: anAssetLoader.
	^ instance