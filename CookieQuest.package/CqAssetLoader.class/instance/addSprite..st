resource loading
addSprite: aFileName

	| spritePath |
	spritePath := self resourceSpriteDirectory, aFileName.
	self sprites
		at: aFileName
		put: (AnimatedImageMorph fromGIFFileNamed: spritePath).