level building
buildLevelFrom: aLevelFile with: aCookieMonster with: anAssetLoader

	| instance |
	instance := CqLevel new.
	instance
		assetLoader: anAssetLoader;
		color: aLevelFile metadata backgroundColor;
		metadata: aLevelFile metadata.
	self buildLayersWith: aLevelFile
		 with: instance metadata 
		 with: anAssetLoader
		 with: instance
		 with: aCookieMonster.
	instance
		extent: instance foregroundLayer extent;
		registerInput.
	self addLayersToLevel: instance.
	instance entityLayer cookieMonster nextState stop.
	instance entityLayer cookieMonster nextState enterState.
	^ instance
		backgroundSound: instance defaultBackgroundSound;
		playBackgroundSound;
		yourself