level building
buildForegroundLayerFrom: aLevelFile withMetadata: aMetadata withAssetLoader: anAssetLoader
	
	^ CqLevelTileLayer
		newFrom: aLevelFile foregroundLayer
		withMetadata: aMetadata
		withAssetLoader: anAssetLoader