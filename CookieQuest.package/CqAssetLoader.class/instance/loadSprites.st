resource loading
loadSprites
	"Add all .sprites in the sprite directory to the sprite dictionary."
	
	| fileNames |
	fileNames := self fileNamesRecursive: self resourceSpriteDirectory matching: '*', self spriteExtension.
	fileNames do: [:fileName | self addSprite: fileName].