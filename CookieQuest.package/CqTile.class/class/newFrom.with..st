instance creation
newFrom: tileInformation with: anAssetLoader
	
	| tile image filePath |
	tile := CqTile new.
	filePath := tileInformation filename.
	image := (anAssetLoader tiles at: filePath).
	tileInformation tileType = 'ice' ifTrue: [tile turnIntoIceTile].
	^ tile
		color: Color transparent;
		extent: image extent;
		fillStyle: (BitmapFillStyle fromForm: image)