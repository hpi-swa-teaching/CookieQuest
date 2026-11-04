A CqLevelFile is a representation of the data read (via STON) from a .cqlevel file.

Instance Variables
	backgroundLayers:		<OrderedCollection>
	entities:		<OrderedCollection>
	foregroundLayer:		<OrderedCollection>
	metadata:		<CqLevelMetadata>
	tiles:		<OrderedCollection>

backgroundLayers
	- collection of collections of integers, which represent the indices of the used tiles for each of the background layers

entities
	- collection of CqEntityMetadata, which determine e.g. the type, size or position of the given entities in that level

foregroundLayer
	- collection of integers, which represent the indices of the used tiles in the foreground layer

metadata
	- the metadata of the level, containing e.g. the tile and level size and the file paths to the tile images

tiles
	- collection of CqTileMetadata objects representing the tiles used in the given level
