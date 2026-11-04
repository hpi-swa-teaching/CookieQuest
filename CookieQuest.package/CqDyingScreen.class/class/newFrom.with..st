instance creation
newFrom: levelLoadingBlocks with: anAssetLoader

	| screen |
	screen := super newFrom: levelLoadingBlocks with: anAssetLoader.
	screen cookieMonsterLifeQuantityText text:
		screen levelLoadingBlocks cookieMonsterLifeQuantity asString.
	^ screen