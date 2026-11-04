A CqLevel represents a whole game level, containing all tile layers and an entity layer. It also handles the user input needed to control the player figure.

Instance Variables
	backgroundLayers:		<OrderedCollection>
	entityLayer:		<CqLevelEntityLayer>
	foregroundLayer:		<CqLevelTileLayer>
	levelloadingblocks:		<CqLevelLoadingBlocks>
	inputHandler:		<CqInputHandler>
	metadata:		<CqLevelMetadata>

backgroundLayers
	- the tile layers representing the background (which are ignored when handling collisions)

entityLayer
	- the layer containing interactive entities like the Cookie Monster or enemies (which will be used for collisions)

foregroundLayer
	- the tile layer representing the foreground (which will be used for collisions)

levelloadingblocks
	- needed to control the owner

inputHandler
	- the inputHandler is used for registering blocks that should be executed when receiving a specific input

metadata
	- the metadata of the level, containing e.g. the tile and level size and the file paths to the tile images
