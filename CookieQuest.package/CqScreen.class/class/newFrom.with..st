instance creation
newFrom: levelLoadingBlocks with: anAssetLoader

	| screen image |
	screen := self new.
	screen
		levelLoadingBlocks: levelLoadingBlocks;
		assetLoader: anAssetLoader.
	image := (screen assetLoader getSprite: screen filename) asMorph.	
	screen content
		addMorph: image;
		extent: image extent.
	^ screen