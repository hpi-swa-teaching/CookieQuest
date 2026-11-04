resource loading
addTile: aFileName

	| tilePath |
	tilePath := self resourceTileDirectory, aFileName.
	self tiles at: aFileName put: (Form fromFileNamed: tilePath).