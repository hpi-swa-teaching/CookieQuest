accessing
tilePositionAt: anIndex
	
	| xPos yPos |
	xPos := self tileWidth * (anIndex \\ self tileQuantityHorizontal).
	yPos := self tileHeight * (anIndex // self tileQuantityHorizontal).
	^ xPos @ yPos