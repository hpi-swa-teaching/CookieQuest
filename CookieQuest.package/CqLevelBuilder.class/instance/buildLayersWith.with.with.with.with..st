level building
buildLayersWith: aLevelFile with: metadata with: anAssetLoader with: aLevel with: aCookieMonster

	aLevel 
		foregroundLayer: (self buildForegroundLayerFrom: aLevelFile
			withMetadata: metadata
			withAssetLoader: anAssetLoader);
		backgroundLayers: (self buildBackgroundLayersFrom: aLevelFile
			withMetadata: metadata
			withAssetLoader: anAssetLoader);
		entityLayer: (self buildEntityLayerFrom: aLevelFile
			withMetadata: aLevelFile metadata
			withLevel: aLevel
			withCookieMonster: aCookieMonster).