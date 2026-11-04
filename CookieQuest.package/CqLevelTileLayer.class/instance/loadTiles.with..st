initialization
loadTiles: aTileArray with: anAssetLoader
	| tileIndex tileData tileMorph |
	tileIndex := 0.
	aTileArray do: [ :value |
		value > 0 ifTrue:
			[tileData := self metadata tiles at: value.
			tileMorph := CqTile newFrom: tileData with: anAssetLoader.
			tileMorph position: (self metadata tilePositionAt: tileIndex).
			self addMorph: tileMorph.
			self occupiedAt: tileIndex is: true].
		tileIndex := tileIndex + 1].