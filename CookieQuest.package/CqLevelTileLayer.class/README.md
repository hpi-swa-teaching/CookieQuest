A CqLevelTileLayer is a layer which contains tiles.

Instance Variables
	metadata:		<CqTileMetadata>
	occupiedFields:		<Matrix>

metadata
	- the metadata of the level, containing e.g. the tile and level size and the file paths to the tile images

occupiedFields
	- a matrix used to memorize whether or not a tile exists at given indices (regarding only that layer)
