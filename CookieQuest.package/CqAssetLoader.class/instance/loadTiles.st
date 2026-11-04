resource loading
loadTiles
	"Add all .tiles from the tilesets directory to the tiles dictionary."
	
	| fileNames |
	fileNames := self fileNamesRecursive: self resourceTileDirectory matching: '*', self tileExtension.
	fileNames do: [:fileName | self addTile: fileName].